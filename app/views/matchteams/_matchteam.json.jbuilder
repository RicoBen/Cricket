json.extract! matchteam, :id, :match_id, :team_id, :player_id, :is_out, :batting_order, :created_at, :updated_at
json.url matchteam_url(matchteam, format: :json)