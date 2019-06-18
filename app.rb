require 'json'
require 'sinatra'
class App < Sinatra::Base
  get '/' do
    'Hello world!'
  end
  post '/webhook' do
    request.body.rewind
    result = JSON.parse(request.body.read)["queryResult"]
    
    response = InterpretService.call(result["action"], result["parameters"])
 
    content_type :json, charset: 'utf-8'
    {
      "payload": {
        "telegram": {
          "text": response,
          "parse_mode": "Markdown"
        }
      }
    }.to_json
  end
end