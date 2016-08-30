module ApplicationHelper
  def team_name(id)
     if id.blank? 
       else
     Team.find(id).name
   end
   end 
   
   def team_full_name(team_id)
      if team_id.blank? 
        else
      Team.find(team_id).full_name
    end
    end
    
    def get_hometeam_by_match(match_id)
      home_id = Match.find(match_id).home
      if match_id.blank? 
        else
        Matchteam.where(match_id: match_id, team_id: home_id).pluck(:player_id)
     end
    end
    
    def get_awayteam_by_match(match_id)
       away_id = Match.find(match_id).away
       if match_id.blank? 
         else
         Matchteam.where(match_id: match_id, team_id: away_id).pluck(:player_id)
         end
     end
     
     
     def player_name(player_id)
       if player_id.blank?
       else
         Player.find(player_id).full_name
     end
   end 
  
  
end
