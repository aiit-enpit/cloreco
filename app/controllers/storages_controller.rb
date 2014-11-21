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

  def edit
    @storage = Storage.find(params[:id])
  end

  def update
    @storage = Storage.find(params[:id])
        if @storage.update(storage_params)
           redirect_to storages_path
        else
           render 'edit'
        end
  end

  def destroy
    @storage = Storage.find(params[:id])
        @storage.destroy
        redirect_to storages_path
  end

  private

    def storage_params
        params[:storage].permit(:title, :url)
    end
end
