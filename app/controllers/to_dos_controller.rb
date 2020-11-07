class ToDosController < ApplicationController
    def index
      @todos = ToDo.all
      @todo = ToDo.new
    end

    def new
      @todo = ToDo.new
    end

    def create
      @todo = ToDo.new(todo_params)
      @todo.save!
      redirect_to to_dos_path
    end

    def edit
      @todo = ToDo.find(params[:id])
    end

    def update
      @todo = ToDo.find(params[:id])
      @todo.update(todo_params)
      redirect_to to_dos_path
    end

    def destroy
     @todo = ToDo.find(params[:id])
     @todo.destroy
     redirect_to to_dos_path
    end
    
private

    def todo_params
      params.require(:to_do).permit(:name, :complete)
    end  

end
