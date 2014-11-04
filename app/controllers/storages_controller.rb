class StoragesController < ApplicationController

  def index
    @storages = Storage.all
  end
  
  def show
    @storage = Storage.find(params[:id])
  end
  
  def new
    @storage = Storage.new
  end
  
  def create
    @storage = Storage.new(storage_params)
    if @storage.save
      redirect_to storages_path
    else
      render 'new'
    end
  end

  private

    def storage_params
        params[:storage].permit(:title)
    end
end
