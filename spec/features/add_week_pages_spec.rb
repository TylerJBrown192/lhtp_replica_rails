require 'rails_helper'

describe "the add a week process" do
  it "adds a new week to a section" do
    section = Section.create(:name => 'Javascript')
    visit section_path(section)
    click_on 'Add Week'
    fill_in 'Name', :with => "Week 1"
    click_on 'Create Week'
    click_on 'Javascript'
    expect(page).to have_content 'Week 1'
  end
end
