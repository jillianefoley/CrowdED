class Resource < ActiveRecord::Base
  attr_accessible :description, :recent_date, :subject_id, :title, :url, :votes
  belongs_to :subject
  validates :url, :presence => true
  validates :title, :presence => true
  validates :subject_id, :presence => true
  
end
