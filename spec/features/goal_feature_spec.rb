require 'rails_helper'

describe 'goal' do

  it 'a user can add a goal to the site' do
    visit '/'
    click_link 'Add a Goal'
    fill_in 'Category', with: 'Fitness'
    fill_in 'Name', with: 'Fit'
    fill_in 'Duration', with: 30
    fill_in 'Content', with: 'Let us get fit'
    click_button 'Submit'

    expect(page).to have_content 'Fit'
  end

  it 'a user can join an existing goal' do
    goal = Goal.create(category: 'Fitness', name: 'xfit', duration: 30, content: 'Let us get xfit')
    visit '/'
    click_link goal.name
    click_button 'Join'

    expect(page).to have_content 'You have joined'
  end

  # it 'allows users to communicate'

  #   goal = Goal.create(category: 'Fitness', name: 'Fit', duration: 30, content: 'Let us get f
  #   visit '/'
  #   click_link goal.name
  #   click_button 'Join'


end