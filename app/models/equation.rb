class Equation
	include Mongoid::Document
	field :a, type: String
	field :b, type: String
	field :c, type: String
	field :result1, type: Float
	field :result2, type: Float

	def get_a
		return a
	end

	def get_b
		return b
	end

	def get_c
		return c
	end
end
