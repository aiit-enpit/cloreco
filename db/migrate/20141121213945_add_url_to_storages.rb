class AddUrlToStorages < ActiveRecord::Migration
  def change
    add_column :storages, :url, :string
  end
end
