class Question < ActiveRecord::Base
  attr_accessible :content, :choices_attributes
  has_many :choices
  accepts_nested_attributes_for :choices

end
