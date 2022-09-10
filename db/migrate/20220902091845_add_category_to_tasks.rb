class AddCategoryToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :category, null: true, foreign_key: true
  end
end
