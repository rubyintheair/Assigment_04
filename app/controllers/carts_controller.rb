class CartsController < ApplicationController

  def add
    cart = get_cart
    line_item = cart.line_items.create! line_item_params
    if cart.save
      flash[:success] = "Added."
    else
      flash[:error] = "Cannot add #{line_item.food_item.name}. Error: #{line_item.errors.full_messages.to_sentence}"
    end 
    redirect_back(fallback_location: sections_path)
  end 

  def line_item_params
    params.require(:line_item).permit(:food_item_id, :quantity)
  end 
end
