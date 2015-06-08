class Instrument < ActiveRecord::Base
  has_many :people 

  validates :instrument_type, presence: true

end
