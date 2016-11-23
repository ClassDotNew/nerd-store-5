class ProductsController < ApplicationController
  def index
    @user_id = session[:user_id]
    if session[:count] == nil
      session[:count] = 0
    end
    session[:count] += 1
    @count = session[:count]
    if params["sort_attribute"] && params["order"]
      @products = Product.order(params["sort_attribute"] => params["order"])
    elsif params["cheap_stuff"]
      @products = Product.where("price < ?", '5')
    elsif params["search_content"]
        @products = Product.where("name LIKE ?", "%#{params['search_content']}%")
    else
      @products = Product.all
    end
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      supplier_id: params["supplier"]["supplier_id"]
      )

    flash[:success] = "Product Created"
    redirect_to "/products/#{@product.id}"
  end

  def show
    if params["id"] == 'random'
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end

end

