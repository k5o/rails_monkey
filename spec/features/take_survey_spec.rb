require 'spec_helper'

describe "user behavior", :js => true do 
  let!(:survey) { FactoryGirl.create(:survey) }
  let!(:question) { FactoryGirl.create(:question, :survey => survey) }
  let!(:choice) { FactoryGirl.create(:choice, :question => question) }

  it "can take a survey" do
    expect {
      visit survey_path(survey)
      page.all('input[type="radio"]').each do |field|
        field.click
      end
      click_button "Submit Survey"
    }.to change(Completion, :count).by(1)
  end

  it "must complete survey if any fields are empty" do
    expect {
      visit survey_path(survey)
      click_button "Submit Survey"
    }.to_not change(Completion, :count)
  end
end