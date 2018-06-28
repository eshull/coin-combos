class Change
  attr_accessor(:cents)

  def initialize(x)
    @cents = x.to_f
  end

  def calculate
    new_cents = @cents
    while new_cents > 0.25 do
      puts new_cents
      new_cents -= 0.15
    end
    new_cents.round(2)
  end
end
