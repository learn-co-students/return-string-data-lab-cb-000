class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def description
    product = Product.find_by(id: params["id"])
    description = product.description
    render plain: description
  end
  def inventory
    product = Product.find_by(id: params["id"])
    inventory = product.inventory
    if inventory > 0
      render plain: "true"
    else
      render plain: "false"
    end
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new
    @product.name = params["name"]
    @product.description = params["description"]
    @product.price = params["price"]
    @product.inventory = params["inventory"]
    @product.save
    redirect_to '/products'
  end
end
