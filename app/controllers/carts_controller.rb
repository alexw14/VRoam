class CartsController < ApplicationController

    def index
        @carts = Cart.where(order_id: User.find(current_user.id).orders.last.id)
    end

    def add_item
        @item = Cart.new(order_id: active_order.id, product_id: params[:product_id])
        if @item.save
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
        current_user.orders.update(is_active: false)
        current_user.orders << Order.new(is_active: true)
        # direct to somewhere else
        redirect_to root_path
    end

end