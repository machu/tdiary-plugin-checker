class Commit < ActiveRecord::Base
  attr_accessible :date, :message, :sha, :tree, :url
end
