class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :customer_id
      t.integer :brew_id
      t.timestamps
    end
  end
end
