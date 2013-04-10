class CompletionsController < ApplicationController
	def create
		Completion.create(params[:completion])
		redirect_to root_path
	end
end