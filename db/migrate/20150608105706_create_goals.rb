class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :type
      t.string :name
      t.integer :duration

      t.timestamps null: false
    end
  end
end
