class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_fname
      t.string :customer_lname
      t.string :customer_email
      t.text :customer_address
      t.string :customer_phone
      t.string :status
      t.datetime :ordered_at
      t.datetime :delivered_at
      t.integer :product_id

      t.timestamps
    end
  end
end
