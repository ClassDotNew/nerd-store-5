class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :update, :destroy, :new, :edit]

  def index
    # if params["sort_attribute"] && params["order"]
    #   @products = Product.order(params["sort_attribute"] => params["order"])
    # elsif params["cheap_stuff"]
    #   @products = Product.where("price < ?", '5')
    # elsif params["search_content"]
    #     @products = Product.where("name LIKE ?", "%#{params['search_content']}%")
    # else
    # end
    if params[:category]
      category_name = params[:category]
      category = Category.find_by(name: category_name)
      @products = category.products
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      supplier_id: params["supplier"]["supplier_id"]
      )

    if @product.save # happy
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      render 'new.html.erb'
    end

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
    if @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      supplier_id: params["supplier"]["supplier_id"]
      )
      flash[:success] = "Product Updated"
      redirect_to "/products/#{@product.id}"
    else
      render 'edit.html.erb'
    end

  end

  def destroy

    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end

end

