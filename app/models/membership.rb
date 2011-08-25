class Membership < ActiveRecord::Base
  
  def self.search(search)
    if search
      find(:all, :conditions => ['full_name like :key or dojo like :key or rank like :key',:key => "%#{search}%"]) 
    else
      find(:all)
    end
  end
end
