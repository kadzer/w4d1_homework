require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( './models/game' )
also_reload( './models/*' )

get '/play/:player1/:player2' do
  game = Game.new(params[:player1].to_s.downcase, params[:player2].to_s.downcase)
  @outcome = game.compare_choices()
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
