class Player < ActiveRecord::Base
  belongs_to :team
  def full_name
    "#{surname}, #{first_name}"
  end
  
end
