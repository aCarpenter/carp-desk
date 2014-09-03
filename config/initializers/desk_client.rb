Rails.application.config.to_prepare do
  # TODO do this in YAML file instead
  DeskClientConfig.config = {
    api_consumer_key: ENV["DESK_API_CONSUMER_KEY"],
    api_consumer_secret: ENV["DESK_API_CONSUMER_SECRET"],
    site: "https://carpcorp.desk.com",
    oauth_token: ENV["DESK_OAUTH_TOKEN"],
    oauth_token_secret: ENV["DESK_OAUTH_TOKEN_SECRET"],
  }
end
