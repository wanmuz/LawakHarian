class Joke < ActiveRecord::Base
  validates :title, :presence => true
end
