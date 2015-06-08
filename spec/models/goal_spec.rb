require 'rails_helper'


describe Goal do


  it 'Must have a category' do
    goal = Goal.new
    expect(goal.valid?).to eq false
  end

  it 'Must have a name' do 
    goal = goal.new(category: 'Fitness')
    expect(goal.valid?).to eq false
  end 

end
