class Completion < ActiveRecord::Base
  attr_accessible :answers_attributes
  has_many :answers
  accepts_nested_attributes_for :answers
end
