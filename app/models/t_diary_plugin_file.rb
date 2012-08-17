class TDiaryPluginFile < ActiveRecord::Base
  attr_accessible :path
  belongs_to :commit

  def link
    "https://github.com/tdiary/tdiary-contrib/blob/master/#{path}"
  end
end
