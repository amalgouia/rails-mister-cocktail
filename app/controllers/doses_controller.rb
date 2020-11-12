class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create

    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(@dose)

    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end


  def destroy

  end

  def description_params
    params.require(:dose).permit(:description)
  end
   def ingredients_params
    params.require(:dose).permit(:ingredients)
  end
end
