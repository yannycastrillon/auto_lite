class Vehicle < ApplicationRecord
  validates :vin presence: true, uniqueness: true
end
