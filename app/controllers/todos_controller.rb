class TodosController < ApplicationController

    before_action :set_todo, only: [:show, :destroy]

    def index
        @todos = Todo.paginate(page: params[:page], per_page: 5)
        render json: @todos
    end

    def show
        render json: @todo
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            render json: @todo
        else 
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @todo.destroy
    end

    private
        def set_todo
            @todo = Todo.find(params[:id])
        end

        def todo_params
            params.required(:todo).permit(:id, :title, :archived, :read, :executed)
        end
end
