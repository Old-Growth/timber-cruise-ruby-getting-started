# frozen_string_literal: true

#:nodoc:
class App < Sinatra::Base
  configure do
    DB = Sequel.connect(ENV['DATABASE_URL'])
  end

  post '/collect' do
    pass unless request.content_type == 'application/json'

    DB[:payloads].insert(app_bundle_id: request.user_agent,
                         payload: request.body.read)
    status 202
  end

  error do
    status 500
  end
end
