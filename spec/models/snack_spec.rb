require 'rails_helper'

describe 'class methods' do
  scenario 'they see average price for all snacks in that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    Snack.create(name: 'Bloody Mary', price: 5.50)
    Snack.create(name: 'Bombay', price: 7.50)
    avg = 6.50

    expect(avg).to eq(dons.avg_price)
  end
end
