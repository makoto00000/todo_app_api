class TodosController < ApplicationController
  def index
    todos = Todo.select(:id, :title)
    render json: { "todos": todos }
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: { "todo": { "id": todo.id, "title": todo.title } }
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      render json: { "todo": { "id": todo.id, "title": todo.title } }
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
      render status: 204
    end
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
