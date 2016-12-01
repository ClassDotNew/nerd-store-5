class OrdersController < ApplicationController
  def create
    # calculated_subtotal = 0
    # carted_products.each do |carted_product|
    #   calculated_subtotal += carted_product.product.price.to_i * carted_product.quantity
    # end
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_tax + calculated_subtotal
    carted_products = current_user.carted_products.where(status: "carted")

    order1 = Order.new(
      user_id: current_user.id,
      )
    order1.save

    carted_products.each do |carted_product|
      carted_product.update(status: "purchased")
      carted_product.update(order_id: order1.id)
    end

    order1.save_all_totals

    redirect_to "/orders/#{order1.id}"
  end

  def show
    @order = Order.find(params[:id])
    render 'show.html.erb'
  end
end
