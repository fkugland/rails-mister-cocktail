class CocktailsController < ApplicationController
  def index         # GET /restaurants
    @cocktails = Cocktail.all
  end

  def show          # GET /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new           # GET /restaurants/new
    @cocktail = Cocktail.new
  end

  def create        # POST /restaurants
    @cocktail = Cocktail.new(params_cocktail)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def edit          # GET /restaurants/:id/edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
    @cocktial.update(params_cocktail)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy       # DELETE /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def params_cocktail
    params.require(:cocktail).permit(:name)
  end
end
