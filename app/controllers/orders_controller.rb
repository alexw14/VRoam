class OrdersController < ApplicationController
    def index
        @orders = Order.where("user_id = ? AND is_active = ?", current_user.id, false)
    end

    def confirmation
    
    end

end