class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    product = Product.create( product_params )
    redirect_to products_path
  end

  def description
    @product = Product.find( params[:id] )
    #puts @product.id
    #puts @product.description
    #redirect_to products_path
    render plain: @product.description
  end

  def inventory
    @product = Product.find( params[:id] )

    render plain: @product.inventory.to_i > 0 ? "true" :"false"
  end

  def new
    @product = Product.new
  end

  private

    def set_product
      @product = Product.find( params[:id] )
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :inventory)
    end

end
