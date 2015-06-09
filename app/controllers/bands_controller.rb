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
  end
end