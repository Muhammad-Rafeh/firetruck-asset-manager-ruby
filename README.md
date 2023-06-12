#FireTruck Class
This repository contains a Ruby file that defines the FireTruck class, which represents a fire truck with certain assets, such as firemen and water supply. The FireTruck class provides methods to restock and dispatch the assets, as well as display the current asset levels.

#Features
The FireTruck class has attributes for color and assets, which include the number of firemen and water supply (in gallons).
The restock method allows you to increase the number of firemen and water supply of the fire truck. It accepts arguments for the quantity of firemen and water to be added and executes a block after restocking.
The dispatch method allows you to decrease the number of firemen and water supply of the fire truck. It accepts arguments for the quantity of firemen and water to be dispatched and executes a block after dispatching.
The show_assets method displays the current number of firemen and water supply of the fire truck. It can also accept a block and yield the FireTruck object for additional actions.
Usage
Here's an example of how you can use the FireTruck class:

ruby
my_firetruck = FireTruck.new('red')

my_firetruck.restock(5, 10) { puts '5 men and 10 gallons restocked' }

1.upto(3) do
  my_firetruck.dispatch(1, 2) { puts '1 man and 2 gallons dispatched' }
end

my_firetruck.show_assets do |firetruck|
  puts firetruck.color
  puts firetruck.assets
end
In this example, a FireTruck object is created with the color "red." The truck is restocked with 5 firemen and 10 gallons of water, and then dispatched 3 times with 1 fireman and 2 gallons each time. Finally, the current assets of the fire truck, along with its color, are displayed.

Feel free to explore and make improvements to this FireTruck class as you learn more about Ruby and object-oriented programming.
