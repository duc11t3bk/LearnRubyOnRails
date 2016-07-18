

class Person
	attr_accessor :name, :age;
	def initialize(name, age)
		puts "Person is created";
		@name= name;
		@age= age;
	end

	def to_s
		return "Name= #{@name}, Age =#{@age}"
	end
	def getName
		@name;
	end
end

class Student < Person 
	def initialize(name, age, grade)
		super(name,age);
		@grade=grade;
		puts "Student is created";
	end

	def to_s
		return super()+" grade is #{@grade}";
	end
end

person = Person.new("John","50");
puts person;
person.name= "Ana";
puts "Name= #{person.getName}";
puts "Get name #{person.name}";
student = Student.new("Victoria","45",5);
puts student;
puts Person.ancestors;

#----------------------------------------
class Animal
	def initialize
		
	end
	def make_noise
		return "some noise";
	end
	def sleep
		return "#{self.class.name} is sleeping";
	end
end

class Dog < Animal
	def make_noise
		return "Woof!";
	end
end
class Cat < Animal
	def make_noise
		return "Meow!";
	end
end

animal = Animal.new;
dog = Dog.new;
cat = Cat.new;
puts "Animal #{animal.make_noise}";
puts "Dog #{dog.make_noise}";
puts "Cat #{cat.make_noise}";
puts animal.sleep;
puts dog.sleep;
puts cat.sleep;