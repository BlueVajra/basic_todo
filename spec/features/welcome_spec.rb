require 'rails_helper'
require 'spec_helper'

feature "Welcome" do
  scenario "User sees welcome message" do
    visit '/'
    expect(page).to have_content "Welcome aboard"


  end
end