class CartsController < ApplicationController

    def index
    end

    def show
    end

    def new
        @cart = Cart.new
    end

    def create
        @cart = Cart.new
        if @cart.save
            redirect_to products_path
        else
            render :new
        end
    end

end