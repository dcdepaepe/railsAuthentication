json.array!(@spartan_basketballs) do |spartan_basketball|
  json.extract! spartan_basketball, :id, :player_name, :player_number, :has_graduated
  json.url spartan_basketball_url(spartan_basketball, format: :json)
end
