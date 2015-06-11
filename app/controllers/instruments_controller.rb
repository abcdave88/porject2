class InstrumentsController < ApplicationController


  def index
    @instruments =Instrument.all
    render json: @instruments
  end
  
  def new 
    @instruments = Instrument.new
  end

  def create
    instrument = Instrument.create params[:instrument].permit(:instrument_type)
    if instrument.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end 

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(person_params)
    redirect_to(root_path)
  end

private
  def instrument_params
     params.require(:instrument).permit(:instrument_type)
  end  
end