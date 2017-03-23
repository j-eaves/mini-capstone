class Product < ApplicationRecord
  belongs_to :supplier #must be singular to work and not break
  has_many :images #must be plural, because there will be more than one image per product
  has_many :orders
  def sale_message
    if price.to_i < 20
      return "Discount Item"
    else
      return "Everyday Deal"
    end
  end
  def tax
    return ((price.to_i*0.09) + price.to_i).to_s
  end
  def friendly_created_at
    return created_at.strftime("%A, %b, %d")
  end
#@product1.supplier_id
  # def supplier
  #   #returns instance of supplier (implicit)
  #   has_many :products
  #   #Supplier.find_by(id: supplier_id)
  # end
end