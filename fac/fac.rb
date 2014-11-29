class Fac
  def initialize(number)
    @number = number
  end

  def get!
    return 1 if @number == 1

    @number * Fac.new(@number-1).get!
  end

  def soma(other)
    get! + Fac.new(other).get!
  end

  def self.soma(number, other)
    new(number).soma(other)
  end

  def self.get(number)
    new(number).get!
  end
end
