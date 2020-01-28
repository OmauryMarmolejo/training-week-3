=begin
The Abstract Class defines a template method that contains a skeleton of some algorithm, composed of calls to (usually) abstract primitive operations.

Concrete subclasses should implement these operations, but leave the template  method itself intact
=end

class Base 
	def title
		raise 'Must implement'
	end

	def description
		raise 'Must implement'
	end

	def benefits
		raise 'Must implement'
	end

	def output
		output = <<-STRING
			Title: #{title}
			Description: #{description}
			Plan benefits: #{benefits}.
		STRING

		puts(output)
	end
end

class BasicPlan < Base
	def title
		"I'm the basic plan"
	end

	def description
		"My description of basic plan"
	end

	def benefits
		['It is free', 'Access to one account', 'Basic features'].join(', ')
	end
end

class PremiumPlan < Base
	def title
		"I'm the premium plan"
	end

	def description
		"My description of premium plan"
	end

	def benefits
		[
			'It will cost USD 10.00',
			'Access to ten accounts',
			'Premium features',
			'You will receive a gift on your birthday'
		].join(', ')
	end
end

basic = BasicPlan.new
basic.output
