class Team < ActiveRecord::Base
  has_many :players
  
  
  
  def full_name
        "#{year} : #{name} #{rank} - #{institute}"
     end
  
  
end
