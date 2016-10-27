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
   def player_batting_order(player_id, match_id)
       if player_id.blank? 
         else
       Matchteam.where(player_id: player_id, match_id: match_id).first.batting_order
     end
     end
     def player_name_abbrv(player_id)
         if player_id.blank? 
           else
         player = Player.find(player_id)
         return player.surname + ', ' + player.first_name[0,1] 
       end
       end
       def runs_scored_per_batsman(player_id, match_id)
           if match_id.blank? 
             else
                if Ball.where(match_id: match_id, batsman: player_id).any?
             Ball.where(match_id: match_id, batsman: player_id, done: true).pluck(:runs).sum
           else
             0
             end
          end
         end
         def runs_scored_per_bowler(player_id, match_id)
             if match_id.blank? 
               else
                 if Ball.where(match_id: match_id, bowler: player_id).any?
               Ball.where(match_id: match_id, bowler: player_id, done: true).pluck(:runs).sum
             end
            end
           end
           def out_per_bowler(player_id, match_id)
               if match_id.blank? 
                 else
                   if Ball.where(match_id: match_id, bowler: player_id, wicket: true).any?
                     Ball.where(match_id: match_id, bowler: player_id, wicket: true).count
                   else
                     0
                   end
              end
             end 
             def out_per_batsman(player_id, match_id)
                 if match_id.blank? 
                   else
                     if Ball.where(match_id: match_id,batsman: player_id, wicket: true).any?
                       Ball.where(match_id: match_id, batsman: player_id, wicket: true, done: true).first.out
                     else
                       0
                     end
                end
               end 
  
  
  
end
