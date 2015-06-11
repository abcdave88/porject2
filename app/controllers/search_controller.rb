class SearchController < ApplicationController

  def find
    @people = Person.all 
    @instruments = Instrument.all
    @bands = Band.all
  end


end
