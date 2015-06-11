class PeopleController < ApplicationController

  def index
    # binding.pry
    @persons = Person.all 
    @query = params.first.first
    @person_instruments = []
    @persons.each do |person| 
      person.instruments.each do |instrument|
        if instrument.instrument_type == @query
          @person_instruments.push(person)
        end
      end
    end
    binding.pry
    render json: @person_instruments
  end



  def new
    @person = Person.new
    @instruments = Instrument.all
  end

  def create
    person = Person.create params[:person].permit(:name, :age, :location, :contact, {instrument_ids:[]})
    if person.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to(root_path)
  end

  def edit
    @person = Person.find(params[:id])
    @instruments = Instrument.all
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    redirect_to(root_path)
  end

  private
  def person_params
     params.require(:person).permit(:name, :age, :location, :contact, {instrument_ids:[]})
  end  
end