class TDiaryPluginFile < ActiveRecord::Base
  attr_accessible :path
  belongs_to :commit

  def link
    "https://github.com/tdiary/tdiary-contrib/blob/master/#{path}"
  end

  def to_json
    {
      path: self.path,
      commit: {
        date: self.commit.date,
        message: self.commit.message
      }
    }.to_json
  end
end
