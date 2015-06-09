require 'rails_helper'

describe 'comment' do
  it 'a user can add a comment to the site' do
    visit '/goals/:id/comments'
    fill_in 'author', with: 'Donkey'
    fill_in 'content', with: 'I really hope this works?'
    click_button 'Submit'

    expect(page).to have_content 'fit'
  end


end