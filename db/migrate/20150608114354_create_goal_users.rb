class CreateGoalUsers < ActiveRecord::Migration
  def change
    create_table :goal_users do |t|
      t.integer :goal_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
