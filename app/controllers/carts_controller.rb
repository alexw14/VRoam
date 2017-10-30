class CartsController < ApplicationController

    def index
        @carts = Cart.find_by(order_id: User.find(current_user.id).orders.last.id)
    end

    def show
    end

    def new
        @cart = Cart.new
    end

    def create
        @current_order = Order.find_by(is_active: true)
        @cart = Cart.new(cart_params)
        if @cart.save
            redirect_to products_path
        else
            render :new
        end
    end

    private

    def cart_params
        params.require(:cart).permit(:product_id)
    end
end