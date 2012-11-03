class Resource < ActiveRecord::Base
  attr_accessible :description, :editDate, :subject_id, :title, :url
  belongs_to :subject
  validates :url, :presence => true
  validates :title, :presence => true
  validates :subject_id, :presence => true
  
end
