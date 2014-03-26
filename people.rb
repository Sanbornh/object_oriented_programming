class Parent
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
	end
end

class Student < Parent
	def learn
		puts "I get it!"
	end
end

class Instructor < Parent
	def teach
		puts "Everything in Ruby is an Object!"
	end
end

student = Student.new("Sanborn")
instructor = Instructor.new("Chris")

instructor.greeting
student.greeting

instructor.teach
student.learn

# This won't work because .teach is a method on Instructor
# instancs, not Student instances
student.teach
