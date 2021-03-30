class TodosController < ApplicationController
before_action :set_todos, only: [:show, :edit, :update, :destroy]
  
  def index
    @todos = Todo.order(:position)
  end

  def show 
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save!
    redirect_to todos_path
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    @todo.save!
    redirect_to todos_path
  end

  def destroy
    @todo.destroy  
    redirect_to todos_path
  end

  # loop through all the items to sort and assign the new position
  def sort
    params[:todo].each_with_index do |id, index|
      Todo.where(id: id).update_all(position: index + 1)
    end
    head :ok
  end

private

  def set_todos
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :deadline, :status, :position)
  end

end