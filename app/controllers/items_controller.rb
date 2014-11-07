class ItemsController < ApplicationController

  def create
    @storage = Storage.find(params[:storage_id])
        @task = @storage.items.create(item_params)
        redirect_to storage_path(@storage.id)
  end

  private

    def item_params
        params[:item].permit(:title)
    end


end
