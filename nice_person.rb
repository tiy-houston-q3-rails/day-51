class NicePerson

  attr_accessor :name, :city, :hair
  @@people = []

  def self.all
    @@people
  end

  def self.create(args)
    nice_person = NicePerson.new

    args.each do |key, value|
      nice_person.send("#{key}=", value) if nice_person.respond_to? "#{key}="
    end

    @@people << nice_person
    nice_person
  end

  # def initialize(args)
  #   @name = args[:name]
  #   @city = args[:city]
  #   @hair = args[:hair]
  # end

  def greet(person, words)
    "Hi #{person.name}, #{words}"
  end

end
