class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save!
      redirect_to cocktails_path
    else
      render :new
    end
  end


  def params_cocktail
    params.require(:cocktail).permit(:name)
  end


end
