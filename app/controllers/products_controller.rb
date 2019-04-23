class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        # binding.pry
        @product = Product.create(product_params)
        redirect_to products_path
    end

    def description
        product = Product.find(params[:id])
        render plain: product.description
    end

    def inventory
        product = Product.find(params[:id])

        if product.inventory != nil && product.inventory > 0
            available = true
        else
            available = false
        end

        render plain: available

    end

    private


    def product_params
        params.require(:product).permit(:name, :description, :price, :inventory)
    end
end
