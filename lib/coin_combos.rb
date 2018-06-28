require 'pry'
class Change
  attr_accessor(:cents)

  def initialize(x)
    @cents = (x * 100)
  end

  def calculate
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    coins = []
    until @cents == 0 do
      if @cents >= 25
        @cents -= 25
        quarters += 1
      elsif @cents >= 10
        @cents -= 10
        dimes += 1
      elsif @cents >= 5
        @cents -= 5
        nickels += 1
      elsif @cents >= 1
        @cents -= 1
        pennies += 1
      end
    end
    coins.push(quarters, dimes, nickels, pennies)
    puts "The change for this amount is #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, and #{pennies}, pennies"
    coins
  end
end
