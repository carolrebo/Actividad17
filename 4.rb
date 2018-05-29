class Dog
	attr_accessor :nombre, :raza, :color
	def initialize (propiedad)
		@nombre = propiedad[:nombre]
		@raza = propiedad[:raza]
		@color = propiedad[:color]
	end
	def ladrar
		puts "#{nombre} está ladrando!"
	end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new (propiedades)
dog.ladrar