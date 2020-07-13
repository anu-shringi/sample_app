class ApplicationController < ActionController::Base
	def hello
		render text: "hello World"
	end
end
