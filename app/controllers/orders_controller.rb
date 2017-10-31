class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    def new
        @order = Order.new
    end

    def create
        @order = Order.new
    end

end