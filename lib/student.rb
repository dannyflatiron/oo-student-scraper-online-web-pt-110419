require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    #takes in an argument of a hash and sets that new student's attributes using the key/value pairs of that hash. (FAILED -
    # how do I set key value pair of a hash
    student_hash.each do |key, value|
      self.name = student_hash.values[0]
      # binding.pry
    end
    # binding.pry
  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
