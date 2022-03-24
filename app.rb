require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'not telling'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  @color = params[:color]
   
  @name = nil if @name == ""

  # @name = @name == "" ? nil : params[:name]

  puts "named-cat #{params}"

  erb(:index)
end

get '/cat-form' do
  erb(:form)
end