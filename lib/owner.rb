require "pry"

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
   @@all = []
   #@pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    #binding.pry
   #Fish.new(fish_name)
   @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    #binding.pry
   #Fish.new(fish_name)
   @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    #binding.pry
   #Fish.new(fish_name)
   @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end
  #def mood_changer(new_mood)

  def sell_pets
     @pets.each do |species, animal|
    #   #binding.pry
       animal.each { |x| x.mood = "nervous"}
     end
     @pets = {:fishes => [], :dogs => [], :cats => []}
    # binding.pry
    # self.reset_all
  end

  # def count_pet_by_type(species)
  #   @pets[species].length
  # end

  def list_pets
    #@pets.each do |species, animal|
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    #end
  end

end
