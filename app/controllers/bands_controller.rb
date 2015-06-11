class BandsController < ApplicationController

  def new 
    @band = Band.new
    @people = Person.all
  end

  def create
    band = Band.create params[:band].permit(:name, {person_ids:[]})
    if band.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @band = Band.find(params[:id])
    # binding.pry
  end

  def edit
    @band = Band.find(params[:id])
    @people = Person.all
    @instrument = Instrument.all
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    redirect_to(root_path)
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to(root_path)
  end
 
  private
  def band_params
     params.require(:band).permit(:name,{person_ids:[]})
  end  
end