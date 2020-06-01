class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :merchant, null: false, foreign_key: true
      t.string :product_name
      t.integer :quantity

      t.timestamps
    end
  end
end
