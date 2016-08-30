json.extract! player, :id, :surname, :first_name, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)