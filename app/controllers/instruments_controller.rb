class InstrumentsController < ApplicationController

  def new 
    @instruments = Instrument.new
  end

  def create
    instrument = Instrument.create params[:instrument].permit(:instrument_type)
    binding.pry
    if instrument.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end