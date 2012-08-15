require 'octokit'

class Commit < ActiveRecord::Base
  attr_accessible :date, :message, :sha, :tree, :url
  validates_uniqueness_of :sha

  def Commit.fetch
    Octokit.commits('tdiary/tdiary-contrib').each do |c|
      unless Commit.where(sha: c.sha).size > 0
        commit = Commit.create(
          date: c.commit.author.date,
          message: c.commit.message,
          tree: c.commit.tree.sha,
          url: c.url,
          sha: c.sha
        )
      end
    end
    nil
  end
end
