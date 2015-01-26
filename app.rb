require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do
		"Welcome to the webapp."
	end
end