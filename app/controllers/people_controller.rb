class PeopleController < ApplicationController

  # def index
  #   @persons = Person.all 
  # end

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
     binding.pry
    @person.update(person_params)
    redirect_to(root_path)
  end

  private
  def planet_params
     params.require(:person).permit(:name, :age, :location, :contact, {instrument_ids:[]})
  end  
end