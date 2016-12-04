class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products.count < 1
      flash[:warning] = "You can't look at the checkout page unless you have something in your shopping cart you moron"
      redirect_to "/products"
    else
      render 'index.html.erb'
    end
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      status: "carted",
      quantity: params[:quantity]
      )
    carted_product.save
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    carted_product.save
    redirect_to "/carted_products"
  end
end
