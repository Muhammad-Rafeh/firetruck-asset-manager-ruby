# FireTruck Asset Manager

This repository contains the Ruby code for the `FireTruck` class, which represents a fire truck with color and asset attributes. The class provides methods for restocking and dispatching firemen and water supplies, as well as displaying the current asset levels.

## Features

- The `FireTruck` class has the following attributes:
  - `color`: Represents the color of the fire truck.
  - `assets`: A hash that stores the current quantities of firemen and water supply.

- The following methods are available for managing the assets:
  - `restock(firemen, water)`: Increases the quantities of firemen and water supply by the specified amounts.
  - `dispatch(firemen, water)`: Decreases the quantities of firemen and water supply by the specified amounts.
  - `show_assets`: Displays the current quantities of firemen and water supply.

## Usage

Here's an example of how to use the `FireTruck` class:

```ruby
my_firetruck = FireTruck.new('red')

my_firetruck.restock(5, 10) { puts '5 men and 10 gallons restocked' }

1.upto(3) do
  my_firetruck.dispatch(1, 2) { puts '1 man and 2 gallons dispatched' }
end

my_firetruck.show_assets do |firetruck|
  puts firetruck.color
  puts firetruck.assets
end
```

This code creates a `FireTruck` object with the color "red". The fire truck is restocked with 5 firemen and 10 gallons of water, dispatched three times with 1 fireman and 2 gallons each time, and finally, the current asset levels and the fire truck's color are displayed.

Feel free to explore and build upon this `FireTruck` class in your projects, and enjoy managing fire truck assets efficiently!
