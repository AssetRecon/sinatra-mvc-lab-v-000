require_relative 'config/environment'
#require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

 post '/' do
   @input_text = params['input_text']
   erb :new
 end
end
