class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def new
		@survey = Survey.new
		3.times do
			@survey.questions.build
		end
		@survey.questions.each do |question|
			5.times do
				question.choices.build
			end
		end
	end

	def create
		@survey = Survey.new(params[:survey])
		if @survey.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@survey = Survey.find(params[:id])
		@questions = @survey.questions
		@completion = Completion.new
		num_questions = @questions.count
		num_questions.times do
			@completion.answers.build
		end
	end
end