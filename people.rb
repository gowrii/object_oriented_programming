

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
person.teach

person2 = Student.new("Cristina")
person2.greeting
person2.learn
person2.teach
#It doesn't work because the teach method is contained within the Instructor class and is not accessable to the Student class.
