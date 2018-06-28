require('rspec')
require('coin_combos')

describe('#coin_combos') do
  it('receives input for number')do
  coins = Change.new(5)
    expect(coins.cents).to(eq(5))
  end
  it('takes input and subtracts quarters from it until it cannot') do
    coins = Change.new(0.35)
    expect(coins.calculate).to(eq(0.20))
  end
end
