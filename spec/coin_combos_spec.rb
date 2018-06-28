require('rspec')
require('coin_combos')

describe('#coin_combos') do
  it('receives input for number')do
  coins = Change.new(5)
    expect(coins.calculate()).to(eq(4))
  end
end
