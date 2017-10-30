class OrdersController < ApplicationController
    def index
        @orders = User.find(current_user.id).orders
    end
    def new
        @order = Order.new
    end

    def create
        @order = Order.new
    end

end