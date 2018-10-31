require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

 post '/' do
   @input_text = params['input_text']
 end
end
