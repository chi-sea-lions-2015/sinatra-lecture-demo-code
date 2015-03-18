require 'sinatra'

# Example Routes
get '/hi' do
  "<h1>Hello, world!</h1>"
end

# Example with Template
get '/' do
  erb :index
end

get '/form-example' do
  erb :form
end

post '/form-example' do
  puts "===============\n"
  puts params.inspect
  puts "===============\n"
  redirect '/'
end

# Sinatra Objects
INSTRUCTORS = {"1" => "Leon", "2" => "Tyler", "3" => "Casey", "4" => "Lucas"}

get '/instructors' do
  puts "===============\n"
  puts params.inspect
  puts "===============\n"
  INSTRUCTORS.values.join(', ')
end

get '/instructors/1' do
  puts "===============\n"
  puts params.inspect
  puts "===============\n"
  INSTRUCTORS["1"]
end

get '/instructors/2' do
  puts "===============\n"
  puts params.inspect
  puts "===============\n"
  INSTRUCTORS["2"]
end

# Move me around to see how I change route matching
get '/instructors/:id' do
  puts "===============\n"
  puts params.inspect
  puts "===============\n"
  "Hello #{INSTRUCTORS[params[:id]]}"
end

get '/sinatra-objects' do
  puts "===============\n"
  puts request.inspect
  puts response.inspect
  puts "===============\n"
end
