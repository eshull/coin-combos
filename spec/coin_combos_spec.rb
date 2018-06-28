require('rspec')
require('coin_combos')

describe('#coin_combos') do
  it('receives input for number')do
  coins = Change.new(5)
    expect(coins.cents).to(eq(500))
  end
  it('takes input and subtracts quarters from it until it cannot') do
    coins = Change.new(0.25)
    expect(coins.calculate).to(eq([1, 0, 0, 0]))
  end
  it('takes input and subtracts dimes from it until it cannot') do
    coins = Change.new(0.10)
    expect(coins.calculate).to(eq([0, 1, 0, 0]))
  end
  it('takes input and subtracts nickels from it until it cannont') do
    coins = Change.new(0.05)
    expect(coins.calculate).to(eq([0, 0, 1, 0]))
  end
  it('takes input and subtracts pennies from it until it cannot') do
    coins = Change.new(0.04)
    expect(coins.calculate).to(eq([0, 0, 0, 4]))
  end
  it('takes input and returns number of coins in change amount') do
    coins = Change.new(0.67)
    expect(coins.calculate).to(eq([2, 1, 1, 2]))
  end
end
