=begin
Se pide:

Crear una clase Course cuyo constructor reciba el nombre del curso y las fechas de inicio y término.

Crear un método que permita leer el archivo y crear una instancia de la clase Course por línea del archivo.

Crear métodos que permitan:

Saber qué cursos comienzan previo a una fecha entregada como argumento.

Saber qué cursos finalizan posterior a una fecha entregada como argumento.

En ambos el métodos argumento por defecto debe ser la fecha de hoy.

Ambos métodos deben levantar una excepción si la fecha recibida es >= 2018-01-01.
=end


class Table
	attr_reader :name
  def initialize(name, *fechas)
  	@name = name
  	@fechas = fechas.map(&:to_s)
    p @fechas
  end



  def maximo
  	p "El dia que maximo recaudado es #{@recaudaciones.max }"
  end
 end

def instanciar(archivo)
    instancia = []
    data = []
    File.open(archivo, 'r') { |file| data = file.readlines}
    data.each do |prod|
      ls = prod.split(', ')
      instancia << Table.new(*ls)
    end
end
insta = instanciar('cursos.txt')
p insta
