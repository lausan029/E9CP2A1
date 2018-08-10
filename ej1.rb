=begin
Crear una clase Table cuyo constructor reciba el nombre de la mesa y las recaudaciones correspondientes de cada día.

Hint: El constructor debe recibir 5 argumentos. Uno para el nombre de la mesa y los demás para cada recaudación correspondiente a esa mesa.

Crear un método que permita leer el archivo e instanciar un objeto de la clase Table por cada línea del archivo.

Crear métodos que permitan:

Conocer el mayor valor recaudado, por mesa, y el nombre de la mesa y día corresponde (día 1, día 2, día 3 o día 4).

Calcular el promedio total de lo recaudado por todas las mesas en todos los días.
=end

class Table
	attr_reader :name
  def initialize(name, *recaudaciones)
  	@name = name
  	@recaudaciones = recaudaciones.map(&:to_i)
  end

  def promedio
  	p "El promedio es #{@recaudaciones.inject(0) {|sum,reca| sum + reca} / @recaudaciones.size} , #{@name}"
  end

  def maximo
  	p "El dia que maximo recaudado es #{@recaudaciones.max }"
  end
 end

instancia = []
data = []
File.open('casino.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  instancia << Table.new(*ls)
end



tam = instancia.count
tam.times do |i|
	instancia[i].promedio
	instancia[i].maximo
end