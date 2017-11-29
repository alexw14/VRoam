class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # Make the current_user and active_order method available to views, not just controllers
  helper_method :current_user
  helper_method :active_order
  helper_method :is_product_in_cart

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def active_order
    @active_order = current_user.orders.find_by(is_active: true)
  end

  def is_product_in_cart (product)
    Cart.where("order_id = ? AND product_id = ?", active_order.id, product.id).exists?
  end

  def authorize
    redirect_to login_path, alert: "You must be logged in to view this page!" if current_user.nil?
  end
end