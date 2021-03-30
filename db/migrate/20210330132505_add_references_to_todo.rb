class AddReferencesToTodo < ActiveRecord::Migration[6.0]
  def change
    add_reference :todos, :users, index: true
  end
end
