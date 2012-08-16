require 'octokit'

class Commit < ActiveRecord::Base
  attr_accessible :date, :message, :sha, :tree, :url
  validates_uniqueness_of :sha
  has_many :t_diary_plugin_files

  def Commit.fetch
    Octokit.commits('tdiary/tdiary-contrib').select {|c|
      Commit.where(sha: c.sha).empty?
    }.each {|c|
      c = Octokit.commit('tdiary/tdiary-contrib', c.sha)
      commit = Commit.create!(
        date: c.commit.author.date,
        message: c.commit.message,
        tree: c.commit.tree.sha,
        url: c.url,
        sha: c.sha
      )
      c.files.each do |f|
        file = TDiaryPluginFile.where(path: f.filename).first ||
          TDiaryPluginFile.new(path: f.filename)
        file.commit = commit
        file.save!
      end
    }
    nil
  end

  def link
    "https://github.com/tdiary/tdiary-contrib/commit/#{sha}"
  end
end
