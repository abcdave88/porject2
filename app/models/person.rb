class Person < ActiveRecord::Base
  has_many :instruments, through: :instruments_persons
  has_many :instruments_persons
  has_many :bands, through: :bands_persons
  has_many :bands_persons

  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :contact, presence: true
end
