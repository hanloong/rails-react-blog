require 'rails_helper'

feature 'Create blog' do
  scenario 'can create a blog', js: true do
    visit '/'
    click_link 'New Blog'

    fill_in 'Name', with: 'My Blog'
    click_link 'Create blog'
    expect(page).to have_content('Blog successfully created.')
  end
end
