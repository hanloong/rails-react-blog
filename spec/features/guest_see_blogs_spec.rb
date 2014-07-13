require 'rails_helper'

feature 'Guests can see all the blogs' do
  before :all do
    Blog.create(name: 'Test Blog')
  end
  scenario 'Guests can see all the blogs', js: true do
    visit '/'
    expect(page).to have_content('Test Blog')
  end
end
