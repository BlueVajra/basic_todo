require 'rails_helper'
require 'spec_helper'

feature "Projects" do
  scenario "User can add a project" do
    visit '/'
    click_link "Add New Project"
    expect(page).to have_content "Add Project Here"
    fill_in 'project[title]', with: 'Project #1'
    fill_in 'project[description]', with: 'Stuff'
    click_on 'Submit'

    expect(page).to have_content "Project #1"


  end
end