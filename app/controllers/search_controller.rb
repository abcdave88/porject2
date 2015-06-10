class SearchController < ApplicationController

  def find
    @persons = Person.all 
    @instruments = Instrument.all
    @bands = Band.all
    @locations = Person.uniq.pluck(:location) 
  end

end
