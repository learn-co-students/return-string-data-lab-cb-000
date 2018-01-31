class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.find_or_create_by(product_params)
    redirect_to products_path
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  protected

  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end

end
