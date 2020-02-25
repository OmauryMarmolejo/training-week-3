=begin
Decorators allow us to add behavior to objects without affecting other objects of the same class. The decorator pattern is a useful alternative to creating sub-classes.
=end

class User
	def initialize(first_name:, last_name:, birthday:)
		@first_name = first_name
		@last_name = last_name
		@birthday = birthday
	end

	attr_accessor :first_name, :last_name, :birthday
end

=begin
When we call super in the #initialize method above, SimpleDelegator ensures that all the methods of the burger object are available on the decorated burger objects that we create.
=end

class UserDecorator < SimpleDelegator
	def full_name
		"#{first_name} #{last_name}"
	end

	def age
		((Time.now - birthday) / 31557600).floor
	end
end

user = User.new(
	first_name: "Bogdan",
	last_name: "Denkovych",
	birthday: Time.new(1996, 6, 27, 6, 0, "+03:00")
)

user_decorator = UserDecorator.new(user)

p user_decorator.class
p user_decorator.first_name
p user_decorator.last_name
p user_decorator.full_name
p user_decorator.birthday
p user_decorator.age
