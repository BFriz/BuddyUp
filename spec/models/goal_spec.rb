require 'rails_helper'


describe Goal do
  let(:whale_goal) { Goal.create(category: 'Fitness',
                         name: 'Turn a Whale into a Fox',
                         duration: 28)}

  it 'Must have a category' do
    goal = Goal.new
    expect(goal.valid?).to eq false
  end

  it 'Must have a name' do 
    goal = Goal.new(category: 'Fitness')
    expect(goal.valid?).to eq false
  end 

  it 'Must have a duration' do
    goal = Goal.new(category: 'Fitness', name: 'To not look like a cow')
    expect(goal.valid?).to eq false 
  end

  context 'Goal users' do
    it 'GoalUser is limited to 2' do
      whale_goal.users << User.new(name: 'Ben', nick_name: 'Zirf', country: 'Canada') << User.new(name: 'Jeremy', nick_name: 'Jemboh', country: 'UK')

      expect{whale_goal.users << User.new(name: 'Laura', nick_name: 'Bambi', country: 'Canada')}.to raise_error
    end
  end

end
