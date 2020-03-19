class Car
  @@all = []
  attr_reader :make, :model, :classification, :owner, :mechanic

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def self.mechanics(specialty)
    self.all.select {|car| car.classification == specialty}
  end

  def self.all
    @@all
  end

end
