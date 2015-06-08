class Person < ActiveRecord::Base
  has_many :instruments
  has_many :bands

  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :contact, presence: true
end
