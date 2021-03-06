require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    #takes in an argument of a hash and sets that new student's attributes using the key/value pairs of that hash. (FAILED -
    # how do I set key value pair of a hash
    student_hash.each do |key, value|
      self.send("#{key}=", value)
      # binding.pry
    end
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      Student.new(student)
    end


  end

  def add_student_attributes(attributes_hash)
    # binding.pry
    attributes_hash.each do |key, value|
    self.send("#{key}=", value)
  end
  end

  def self.all
    @@all
  end

end
