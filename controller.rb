require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( './models/game' )
also_reload( './models/*' )

get '/play/:player1/:player2' do
  erb(:result)
end


get '/welcome' do
  erb(:welcome)
end
