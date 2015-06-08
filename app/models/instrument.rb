class Instrument < ActiveRecord::Base
  has_many :people, through: :instruments_persons
  has_many :instruments_persons

  validates :instrument_type, presence: true

end
