class CocktailsController < ApplicationController
  def index         # GET /restaurants
    @cocktails = Cocktail.all
  end

  def show          # GET /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
  end

  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end
end
