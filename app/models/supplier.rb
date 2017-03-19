class Supplier < ApplicationRecord
  has_many :products #must be plural not to break
  # def products
  #   #grab all of the products
  #   #If only one, should send an array
  #   #Product.where(supplier_id: id) #Where supplier_id = my_id (if I'm the supplier)

  # end
end
