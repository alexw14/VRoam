class CartsController < ApplicationController
    before_action :authorize

    def index
        @carts = Cart.where(order_id: User.find(current_user.id).orders.last.id)
        @total = 0
        @carts.each do |cart|
            @total += Product.find(cart.product_id).price # Calculate total price of products in cart
        end

    end

    def add_item
        @item = Cart.new(order_id: active_order.id, product_id: params[:product_id])
        if Cart.where("order_id = ? AND product_id = ?", active_order.id, params[:product_id]).exists? # Restrict adding item that is already in cart
            redirect_to carts_path
        elsif @item.save
            redirect_to carts_path 
        else
            render :new
        end
    end

    def remove_item
        Cart.find(params[:cart_id]).destroy
        redirect_to carts_path
    end

    def purchase
        current_user.orders.update(is_active: false) # Change the current user's active order status to false
        current_user.orders << Order.new(is_active: true) # Create a new active order for current user
        redirect_to confirmation_path
    end
end