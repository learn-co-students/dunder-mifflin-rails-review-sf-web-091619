class DogsController < ApplicationController
  
  def index
    @dogs = Dog.get_employees(params[:sort])
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
