class OrdersController < ApplicationController
  def create
    # make a new order
    product = Product.find(params[:product_id])
    price = product.price.to_i
    quantity = params[:quantity].to_i
    tax_rate = 0.1

    order = Order.new(
      quantity: params[:quantity],
      user_id: current_user.id,
      product_id: params[:product_id],
      subtotal: price * quantity,
      tax: tax_rate * price * quantity,
      total: (tax_rate * price * quantity) + (price * quantity)
      )
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
    render 'show.html.erb'
  end
end
