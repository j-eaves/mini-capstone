class AddActiveToProducts < ActiveRecord::Migration[5.0]
  def change
    #add a column to the products table named active, and have it be a true or false
    add_column :products, :active ,:boolean
  end
end
