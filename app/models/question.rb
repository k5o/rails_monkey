class Question < ActiveRecord::Base
  attr_accessible :content, :choices_attributes
  has_many :choices
  belongs_to :survey
  accepts_nested_attributes_for :choices

  validates :content, :presence => true
end
