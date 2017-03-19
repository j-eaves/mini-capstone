class Product < ApplicationRecord
  belongs_to :supplier #must be singular to work and not break
  def sale_message
    if price.to_i < 20
      return "Discount Item"
    else
      return "Everyday Deal"
    end
  end

#@product1.supplier_id
  # def supplier
  #   #returns instance of supplier (implicit)
  #   has_many :products
  #   #Supplier.find_by(id: supplier_id)
  # end
end