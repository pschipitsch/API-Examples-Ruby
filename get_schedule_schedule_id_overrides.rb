require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
schedule_id='PK6D3G2'
since_date="2014-07-02T01:00Z"
until_date="2014-07-05T01:00Z"

endpoint="https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}/overrides"
endpoint << "?since=#{since_date}&until=#{until_date}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, 
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
