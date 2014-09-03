require "rubygems"
require "oauth"

consumer = OAuth::Consumer.new(
  "API_CONSUMER_KEY",
  "API_CONSUMER_SECRET",
  :site => "https://yoursite.desk.com",
  :scheme => :header
)

access_token = OAuth::AccessToken.from_hash(
  consumer,
  :oauth_token => "ACCESS_TOKEN",
  :oauth_token_secret => "ACCESS_TOKEN_SECRET"
)

response = access_token.get("https://yoursite.desk.com/api/v2/users/current")
