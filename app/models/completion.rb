class Completion < ActiveRecord::Base
  attr_accessible :answers_attributes, :survey_id
  has_many :answers
  belongs_to :survey
  accepts_nested_attributes_for :answers

  validates :answers, :presence => true
end
