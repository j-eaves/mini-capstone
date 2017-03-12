class ProductsController < ApplicationController
  
  def index
    #/index
    @products = Product.all
    render 'index.html.erb'
  end

  # def products_page
  #   #this should be in views>products
  #   #This is just a test page, nothing official
  #   render 'products.html.erb'
  # end
  
  def new
    #/new
    render 'new.html.erb'
  end

  def create
    #Takes several parameters
    @product = Product.new(
      name: params[:form_name],
      price: params[:form_price],
      image: params[:form_image],
      description: params[:form_description])
    @product.save
    #show the created form
    render 'create.html.erb'
  end

  def show
    #/show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    if @product.name == nil
      render 'index.html.erb'
    end
    #@product = Product.find_by(id: params[:id])#this eliminates the first 2 lines
    render 'show.html.erb'
  end
  def edit
    #just renders this page
    @product = Product.find_by(id: params[:id])#finds the number and grabs the recipe
    render 'edit.html.erb'
  end
  def update
    #currently can only update the 3rd one
    #ruins everything if you don't update all fields
    #not showing changes after update
    #does not show default values
    @product = Product.find_by(id: params['id'])
    #update saves these attributes automatically
    @product.update(
      name: params[:form_name],
      price: params[:form_price],
      image: params[:form_image],
      description: params[:form_description]
      )
    render 'update.html.erb'
  end
  def destroy
    @product = Product.find(params[:id])
    #@id = @product.id
    @product.destroy
    render 'destroy.html.erb'
  end
end
