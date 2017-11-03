class OrdersController < ApplicationController
    before_action :authorize
    
    def index
        @orders = Order.where("user_id = ? AND is_active = ?", current_user.id, false)
    end

    def confirmation
        @orders = Order.where("user_id = ? AND is_active = ?", current_user.id, false)
    end
end