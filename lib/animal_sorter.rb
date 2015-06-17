# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter

SEA_ANIMALS = ["fish", "marlin", "octopus"]

LAND_ANIMALS = ["cat", "elephant", "aardvark"]

  attr_accessor :animals 

  def initialize(animal_array)
    @animals = animal_array
  end

  def sea_animals
    @animals.select do |animal|
      SEA_ANIMALS.include?(animal)
    end
  end

  def land_animals
    @animals.select do |animal|
      LAND_ANIMALS.include?(animal)
    end
  end

  def to_a
    [sea_animals, land_animals]
  end


end