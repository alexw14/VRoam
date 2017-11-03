class ProductsController < ApplicationController
    before_action :authorize, except: [:index]

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end
end