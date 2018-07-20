class Machine < ApplicationRecord
  belongs_to :owner
  has_many :snack_machines
  has_many :snacks, through: :snack_machines

  def avg_price
    binding.pry
    Snack.average[:price]
  end
end
