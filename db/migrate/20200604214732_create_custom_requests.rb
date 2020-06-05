class CreateCustomRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_requests do |t|
      t.belongs_to :request, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
