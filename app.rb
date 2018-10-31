require_relative 'config/environment'
require_relative 'models/pigLatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

 post '/' do
   @input_text = params['input_text']
 end
end
