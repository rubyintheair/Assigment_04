class SectionsController < ApplicationController
  def index
    @sections = Section.all
    if params[:section]
      section = Section.find_by(name: params[:section])
      @food_items = section.food_items
    else 
      @food_items = []
    end
  end

  def show
    @section = Section.find(params[:id])
    @food_items = @section.food_items
  end 
end
