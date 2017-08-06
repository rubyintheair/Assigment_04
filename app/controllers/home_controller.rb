class HomeController < ApplicationController
  def index
    get_cart
  end

  def set_cart
    @cart = Cart.create
    session[:cart_id] = @cart.id 
    @cart
  end 

  def get_cart
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else 
      set_cart
    end 
  end 

  

  def contact_us
  end 


  
end
