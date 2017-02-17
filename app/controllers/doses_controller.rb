class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new(params_dose)
    @dose.cocktail = @cocktail
    if @dose.save
    redirect_to cocktails_path
    else
    render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end


  private

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
