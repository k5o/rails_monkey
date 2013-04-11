class Survey < ActiveRecord::Base
  attr_accessible :title, :description, :questions_attributes
  has_many :questions
  has_many :completions
  accepts_nested_attributes_for :questions
	
  validates :title, :presence => true
  validates :description, :presence => true
end
