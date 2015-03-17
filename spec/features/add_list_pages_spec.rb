require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    visit sections_path
    click_on 'Create a new Section'
    fill_in 'Name', :with => 'PHP'
    click_on 'Create Section'
    expect(page).to have_content 'Sections'
  end

  it "gives error when no name is entered" do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end

describe "the add a week process" do
  it "adds a new week to a section" do
    section = Section.create(:name => 'PHP')
    visit section_path(section)
    click_on 'Add Week'
    expect(page).to have_content 'Weeks'
  end
end
