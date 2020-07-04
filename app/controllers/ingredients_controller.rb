class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect_to cocktail_path(ingredient.name)
  end

  def create
    ingredient = Ingredient.new ingredient_params
    @cocktail = Cocktail.find(params[:cocktail_id])
    ingredient.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def review_params
    params.require(ingredient).permit(:description)
  end
end

