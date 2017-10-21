class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

   def new
    @product = Product.new
   end

   def create
     binding.pry
     @product = Product.create(name: params[:product][:name], description: params[:product][:description], inventory: params[:product][:inventory])
     redirect_to products_path
   end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

end
