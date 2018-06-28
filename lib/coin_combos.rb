require 'pry'
class Change
  attr_accessor(:cents)

  def initialize(x)
    @cents = (x * 100)
  end

  def calculate
    new_cents = @cents
    while  new_cents >= 25 do
      new_cents -= 25
    end
    while new_cents >= 10 do
      new_cents -= 10
    end
    new_cents / 100
  end
end
