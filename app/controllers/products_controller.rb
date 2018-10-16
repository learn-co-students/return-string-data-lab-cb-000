class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    product = Product.create(product_params)
    redirect_to products_path
  end

  def description
    product = Product.find_by_id(params['id'])
    if product
      render plain: product.description
    else
      render plain: 'cannot find product'
    end
  end

  def inventory
    product = Product.find_by_id(params['id'])
    if product
      render plain: product.inventory > 0
    else
      render plain: 'cannot find product'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end
  
end
