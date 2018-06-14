class AddPriceToBrews < ActiveRecord::Migration[5.1]
  def change
    add_column :brews, :price, :float
  end
end
