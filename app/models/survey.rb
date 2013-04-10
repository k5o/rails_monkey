class Survey < ActiveRecord::Base
  attr_accessible :title, :description, :questions_attributes
  has_many :questions
  accepts_nested_attributes_for :questions
end
