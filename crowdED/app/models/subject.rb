class Subject < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :resources
end
