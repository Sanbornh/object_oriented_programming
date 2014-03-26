class Parent
	def initialize(name)
		@name = name
	end

	def get_name
		return @name
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

class Class 
	def initialize(students, teacher)
		@students = students
		@teacher = teacher.get_name
	end

	def class_list
		puts "#{@teacher}'s Class:"
		@students.each { |student| puts student.get_name }
	end
end

student1 = Student.new("Sanborn")
instructor = Instructor.new("Chris")

instructor.greeting
student1.greeting

instructor.teach
student1.learn

student2 = Student.new("Jeff")
student3 = Student.new("Ted")

students = Array.new
students << student1 << student2 << student3

class1 = Class.new(students, instructor)
class1.class_list


# The following won't work because .teach is a method on Instructor
# instancs, not Student instances:
# student.teach
