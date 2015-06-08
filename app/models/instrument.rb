class Instrument < ActiveRecord::Base
  validates :type_of, presence: true
  
end
