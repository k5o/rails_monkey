class AnswersController < ApplicationController
	def create
		puts params
		redirect_to root_path
	end
end