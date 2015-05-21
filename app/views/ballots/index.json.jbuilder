json.array!(@ballots) do |ballot|
  json.extract! ballot, :id, :issue, :options
  json.url ballot_url(ballot, format: :json)
end
