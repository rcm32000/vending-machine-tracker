class Snack < ApplicationRecord
  validates_presence_of :name, uniqueness: true, required: true
  validates_presence_of :price, required: true

  has_many :snack_machines
  has_many :machines, through: :snack_machines
end
