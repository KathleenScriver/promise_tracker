class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def show
    @promise = Promise.find(params["id"])
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.new(promise_params)
    if @promise.save
      redirect_to '/'
    else
      render new
    end 
  end

  private

  def promise_params
    params.require(:promise).permit(:title, :promiser)
  end
end
