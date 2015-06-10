class SearchController < ApplicationController

  def find
    @data_tables = ActiveRecord::Base.connection.tables
    @persons = Person.all 
    @instruments = Instrument.all
    @bands = Band.all
  end

end
