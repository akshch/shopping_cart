class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :set_cart, if: :devise_controller?


  before_action :current_cart

  private

  def current_cart
    if session[:cart_id]
      cart = Cart.find_by(:id => session[:cart_id])
      @current_cart = cart
    elsif current_user
      @current_cart = current_user.cart
      session[:cart_id] = nil
    else
      session[:cart_id] = nil
    end

    if  session[:cart_id] == nil
      if current_user.blank?
        @current_cart = Cart.create
      elsif current_user.present? && @current_cart.blank?
        @current_cart = Cart.create(user_id: current_user.id)
      end
      session[:cart_id] = @current_cart.id
    end
  end

    def set_cart
      if params['controller'] == 'devise/sessions' && params['action'] == 'create' && @current_cart.present?
         @current_cart.update(user_id: current_user.id)
         session[:cart_id] = nil
      end
    end

    # def after_sign_out_path_for(resource)
    #   root_url
    # end

    def after_sign_out_path_for(resource)
      root_url
    end
end
