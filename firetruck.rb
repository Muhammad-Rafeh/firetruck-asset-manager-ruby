class FireTruck
  attr_reader :color, :assets

  def initialize(color)
    @color = color
    @assets = {
      'firemen'=> 0,
      'water'=> 0
    }
  end

  def restock(firemen, water)
    @assets['firemen'] += firemen
    @assets['water'] += water
    yield
  end

  def dispatch(firemen, water)
    @assets['firemen'] -= firemen
    @assets['water'] -= water
    yield
  end

  def show_assets
    puts 'firemen available'
    puts @assets['firemen']

    puts 'water(galon) available'
    puts @assets['water']
    yield self if block_given?
  end
end

my_firetruck = FireTruck.new('red')

my_firetruck.restock(5, 10) { puts '5 men and 10 galons restocked' }

1.upto(3) do
  my_firetruck.dispatch(1, 2) { puts '1 man 2 galons dispatched' }
end

my_firetruck.show_assets do |firetruck|
  puts firetruck.color
  puts firetruck.assets
end
