class Mechanic
  @@all = []
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  def car_owners
    self.cars.map{|car| car.owner}.uniq
  end

  def self.car_owners_by_mechanic(mechanic)
    mechanic.car_owners
  end

  def self.all
    @@all
  end 

end
