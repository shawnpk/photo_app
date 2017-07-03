require 'rails_helper'

feature 'visitor sees homepage' do
  scenario 'by visiting the root path' do
    visit root_path

    expect(page).to have_content 'Welcome to the Photo App'
  end
end
