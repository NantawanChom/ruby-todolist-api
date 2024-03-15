class CreateTodoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.boolean :is_success

      t.timestamps
    end
  end
end
