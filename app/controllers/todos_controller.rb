class TodosController < ApplicationController
before_action :set_todos, only: [:show, :edit, :update, :destroy]
def index
  @todos = Todo.all
end

def show 
end

def new
  @todo = Todo.new
end

def create
  @todo = Todo.new(todo_params)
  @todo.save
  redirect to todos_path
end

def edit
end

def updated
  @todo.update(todo_params)
  redirect to todos_path
end

def destroy
  @todo.destroy  
  redirect to todos_path
end

private

def set_todos
  @todo = Todo.find(params[:id])
end

def todo_params
  params.require(:todo).permit(:title, :description, :deadline)
end
