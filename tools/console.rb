require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# CarOwners
ted = CarOwner.new("Ted")
tom = CarOwner.new("Tom")
tim = CarOwner.new("Tim")

# Mechanics
mike = Mechanic.new("Mike", "Exotic")
matt = Mechanic.new("Matt", "Electric")
mick = Mechanic.new("Mick", "Antique")

# Cars
teds_first_car = Car.new("Chevrolet", "Impala", "Antique", ted, mick)
teds_second_car = Car.new("Ford", "Mustang", "Antique", ted, mick)
teds_third_car = Car.new("Tesla", "Model X", "Electric", ted, matt)
toms_first_car = Car.new("Porche", "911", "Exotic", tom, mike)
toms_second_car = Car.new("Porche", "Panemera", "Exotic", tom, mike)
toms_third_car = Car.new("Lamborghini", "Diablo", "Exotic", tom, mike)
toms_fourth_car = Car.new("Porche", "Roadster", "Antique", tom, mick)
tims_first_car = Car.new("Tesla", "Model 3", "Electric", tim, matt)
tims_second_car = Car.new("Nissan", "GT-R", "Exotic", tim, mike)

binding.pry
