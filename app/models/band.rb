class Band < ActiveRecord::Base
  has_many :people, through: :bands_persons
  has_many :bands_persons

  validates :name , presence: true
end
