class SearchController < ApplicationController

  def find
    @persons = Person.all 
    @instruments = Instrument.all
    @bands = Band.all
  end
end
