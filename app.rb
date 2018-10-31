require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

 post '/piglatinize' do

   @piglatin = piglatinize(params['input_text'])
   erb :new
 end
end
