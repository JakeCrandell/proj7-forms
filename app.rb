require 'sinatra'
require 'holidapi'


class MyWebApp < Sinatra::Base
	get '/' do
		@current_holidays = HolidApi.get(country: 'us', month: Time.new.month, year: Time.new.year)
		@old_holidays = HolidApi.get(country: 'us', month: 8, year: 1994)
		erb :index
	end
end
