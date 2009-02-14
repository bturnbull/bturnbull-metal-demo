#require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

require 'sinatra'
Sinatra::Application.set(:run => false)
Sinatra::Application.set(:environment => :production)

HelloSinatra = Sinatra::Application.new unless defined? HelloSinatra

get '/hello/sinatra' do
  response['Content-Type'] = 'text/plain'
  'Hello, Sinatra!'
end

