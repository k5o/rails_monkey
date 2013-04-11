FactoryGirl.define do
  factory :survey do
  	title 'Happy'
  	description 'This is a happy survey'
  end

  factory :question do
  	content "pancakes"
  	survey
  end

  factory :choice do
  	content "adf"
  	question
  end
end

