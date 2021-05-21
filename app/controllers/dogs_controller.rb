class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)

        if @dog.valid?
            redirect_to @dog
          else  
            flash[:errors] = @dog.errors.full_messages
            redirect_to new_dog_path
          end
    end

    def edit
    end

    def update
        @dog.update(dog_params)
		redirect_to @dog
    end

    def destroy
        @dog.destroy
    end

    private

   
    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    def find_dog
        @dog = Dog.find(params[:id])
    end

end

