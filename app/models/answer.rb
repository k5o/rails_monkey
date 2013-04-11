class Answer < ActiveRecord::Base
	attr_accessible :choice_id
	belongs_to :choice
	belongs_to :completion

	validates :choice_id, :presence => true
end