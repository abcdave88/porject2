# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instrument.delete_all
Person.delete_all
Band.delete_all

i1 = Instrument.create(instrument_type: 'Bass')
i2 = Instrument.create(instrument_type: 'Guitar')
i3 = Instrument.create(instrument_type: 'Drums')
i4 = Instrument.create(instrument_type: 'Vocals')
i5 = Instrument.create(instrument_type: 'Keyboard')