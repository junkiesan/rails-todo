class RemoveReferenceFromTodos < ActiveRecord::Migration[6.0]
  def change
    remove_reference :todos, :users, index: true
  end
end
