class Membership < ActiveRecord::Base
  
  def self.search(search)
    if search
      find(:all, :conditions => ['full_name LIKE ?', "%#{search}%"]) 
    else
      find(:all)
    end
  end
end
