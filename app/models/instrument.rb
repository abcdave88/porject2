class Instrument < ActiveRecord::Base
  has_many :people 

  validates :type_of, presence: true

end
