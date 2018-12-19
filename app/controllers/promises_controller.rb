class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def show
    @promise = Promise.find(params["id"])
  end
end
