class OrdersController < ApplicationController
  def create
    @order = Order.create(
      
    )
    render 'create.html.erb'
  end
end
