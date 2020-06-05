class EditRequests < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :product_name, :product_id
  end
end
