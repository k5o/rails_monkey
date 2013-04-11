class Choice < ActiveRecord::Base
  attr_accessible :content
  belongs_to :question
  has_many :answers

  validates :content, :presence => true
end
