class ChangeStatusFromTodos < ActiveRecord::Migration[6.0]
  def change
    change_column :todos, :status, :boolean, default: false
  end
end
