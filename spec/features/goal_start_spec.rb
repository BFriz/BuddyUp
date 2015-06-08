require 'rails_helper'

describe 'adding a goal' do

  it 'a user can add a goal to the site' do
    visit '/'
    click_link 'Add a Goal'
    fill_in 'Category', with: 'Fitness'
    fill_in 'Name', with: 'BFriz'
    fill_in 'Duration', with: 30
    click_button 'Submit'

    expect(page).to have_content 'Fitness'
  end
end