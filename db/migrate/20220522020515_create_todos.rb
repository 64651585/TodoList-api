class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :read
      t.boolean :executed
      t.boolean :archived

      t.timestamps
    end
  end
end
