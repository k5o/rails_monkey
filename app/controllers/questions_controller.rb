class QuestionsController < ApplicationController
	def new
		@question = Question.new
		5.times do
			@question.choices.build
		end
	end

	def create
		@question = Question.new(params[:question])
		if @question.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
	end
end