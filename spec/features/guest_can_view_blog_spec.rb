require 'rails_helper'

describe 'Guest can view blog' do
  before :all do
    b = Blog.create(name: 'My first blog')
    b.entries.create(title: 'First entry', content: 'React.js is awesome')
  end
  scenario 'guest can view blog', js: true do
    visit '/'
    click_on 'My first blog'
    expect(page).to have_content 'First entry'
    expect(page).to have_content 'React.js is awesome'
  end
end
