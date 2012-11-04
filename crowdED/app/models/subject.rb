class Subject < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :resources
  
  def self.search(search)
  	if search
  		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	else
  		find(:all)	
  	end
  end
  
end
