class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
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
    # unless you made this order go away
    # user id from the order to the current user id
    @order = Order.find(params[:id])
    unless current_user.id == @order.user_id || current_user.admin
      redirect_to "/products"
    end
  end
end
