class AddStatusToTodo < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :status, :integer, default: 0
  end
end
