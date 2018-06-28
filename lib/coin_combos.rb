require 'pry'
class Change
  attr_accessor(:cents)

  def initialize(x)
    @cents = (x * 100)
  end

  def calculate
    while  @cents >= 25 do
      @cents -= 25
    end
    while @cents >= 10 do
      @cents -= 10
    end
    while @cents >= 5 do
      @cents -= 5
    end
    while @cents >= 1 do
      @cents -= 1
    end
    @cents / 100
  end
end
