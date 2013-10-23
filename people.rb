

class Person
	def initialize (name)
		@name = name
	end
	def greeting
		puts "Hi my name is #{@name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end


class Instructor < Person
	def teach
	puts "Everyting in Ruby is an Object"
	end
end
person = Instructor.new("Chris")
person.greeting

person = Student.new("Cristina")
person.greeting

