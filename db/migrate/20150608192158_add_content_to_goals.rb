class AddContentToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :content, :text
  end
end
