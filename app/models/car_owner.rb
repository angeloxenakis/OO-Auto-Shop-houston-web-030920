class CarOwner
  @@all = []
  attr_reader :name, :mechanic

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end 

  def mechanics
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.average_cars
    average = 0
    self.all.each do |owner|
      average += owner.cars.length
    end
    average / CarOwner.all.length
  end

  def self.all
    @@all
  end 

end
