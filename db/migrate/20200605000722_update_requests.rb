class UpdateRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :product_id, :integer
  end
end
