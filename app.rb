require "sinatra"

class App < Sinatra::Base
  set :public_folder, File.dirname(__FILE__)
  set :static, true

  get "/" do
    send_file File.join(settings.public_folder, "index.html")
  end

  get "/health" do
    content_type :json
    {status: "ok", timestamp: Time.now.iso8601}.to_json
  end
end
