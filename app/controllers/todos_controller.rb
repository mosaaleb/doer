class TodosController < ApplicationController
  before_action :authenticate

  def index
  @todos = Todo.where(email: current_email)
  end
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create todo_params.merge(email: current_email)
    redirect_to root_path
  end

  private
  
  def todo_params
    params.require(:todo).permit(:task)
  end
end