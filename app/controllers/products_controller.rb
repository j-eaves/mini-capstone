class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    #@product = Product.find_by(id: params[:id])#this eliminates
    render 'show.html.erb'
  end
  def products_page
    #this might need to be in views>pages, not products...
    render 'products.html.erb'
  end
end
