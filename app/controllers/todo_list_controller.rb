class TodoListController < ApplicationController

  before_action :find_id, only: [:show, :update, :destroy]

  # GET /todo_list
  def index
    @todo_list = TodoList.all.order(id: :asc)
    render json: @todo_list
  end

  def show
    render json: @todo_list
  end

  # POST /todo_list
  def create
    @todo_list = TodoList.new(todolist_create_params)
    if @todo_list.save
      render json: @todo_list, status: :created, location: @todo_list
    else
      render json: @todo_list.errors, status: :unprocessable_entity
    end
  end

  def update
    if @todo_list.update(todolist_update_params)
      render json: @todo_list
    else
      render json: @todo_list.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_id
      @todo_list = TodoList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todolist_create_params
      params.require(:todo_list).permit(:title)
    end

    def todolist_update_params
      params.require(:todo_list).permit(:title, :is_success)
    end
end
