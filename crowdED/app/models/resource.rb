class Resource < ActiveRecord::Base
  after_initialize :default_values
  
  attr_accessible :description, :recent_date, :subject_id, :title, :url, :votes
  belongs_to :subject
  validates :url, :presence => true
  validates :title, :presence => true
  validates :subject_id, :presence => true

  def self.search(search)
  	if search
  		find(:all, :conditions => ['title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"])
  	else
  		find(:all)	
  	end
  end
  
  private
    def default_values
      self.votes ||= 0
    end
end
