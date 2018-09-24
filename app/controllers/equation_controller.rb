class EquationController < ApplicationController
	def index
		@eq = Equation.new
	end

	def create
		@eq = Equation.new(eq_params)

		@eq.result1, @eq.result2 = solve_quad_eq(Float(@eq.a), Float(@eq.b), Float(@eq.c))

		puts "res1: " + String(@eq.result1)

		puts "res2: " + String(@eq.result2)

		render 'index'
	end

	def solve_quad_eq(a, b ,c)
		if (a == 0)
			#bx + c = 0
			return -c/b
		end

		d = b*b - 4*a*c

		if d < 0
			return "No solution..."
		end

		if d == 0
			return -b/2*a
		end

		x1 = (-b + Math.sqrt(d))/2*a
		x2 = (-b - Math.sqrt(d))/2*a

		return [x1, x2]
	end

	def eq_params
		return params.require(:equation).permit(:a, :b, :c)
	end
end
