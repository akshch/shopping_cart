class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @current_cart.line_items.each do |item|
      @order.line_items << item
      @order.user_id = current_user.id
      item.cart_id = nil
    end
    @order.save!
    Cart.find_by(user_id: current_user.id).destroy
    session[:cart_id] = nil
    redirect_to order_path(@order)
  end
  
  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end

end