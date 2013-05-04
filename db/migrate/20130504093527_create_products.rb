class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :pid
      t.boolean :available

      t.timestamps
    end
  end
end
