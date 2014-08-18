class NicePerson < ActiveRecord::Base

  before_validation on: :create do
    self.permalink = name.parameterize
  end

  def greet(person, words)
    "Hi #{person.name}, #{words}"
  end

  def to_param
    permalink
  end

end
