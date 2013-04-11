require 'spec_helper'

describe "user behavior", :js => true do 
  let(:survey) { FactoryGirl.create(:survey) }

  it "creates a survey" do
    expect {
      visit new_survey_path
      page.all('input[type="text"]').each do |field|
        field.set "something"
      end
      fill_in "Description", :with => "description"
      click_button "Create Survey"
    }.to change(Survey, :count).by(1)
  end

  it "does not create a survey" do
    expect {
      visit new_survey_path
      click_button "Create Survey"
    }.to_not change(Survey, :count)
  end
end