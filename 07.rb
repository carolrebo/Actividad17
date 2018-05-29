# La tienda desea generar un nuevo catálogo que no incluya el último precio
# correspondiente a cada producto debido a que ya no comercializa productos de talla
# XS.
# Se pide generar un método que reciba como argumento los datos del archivo
# catalogo.txt y luego imprima el nuevo catálogo solicitado en un archivo llamado
# nuevo_catalogo.txt



class Tienda
  def crear_nvo(producto)
    File.open('nuevo_catalogo.txt', 'a') { |file| file.puts("#{producto.name}, #{producto.large}, #{producto.medium}, #{producto.small}")}
  end 
end  

class Product
  attr_accessor :name, :large, :medium, :small, :xsmall

  def initialize(name,large,medium,small,xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

tienda = Tienda.new
products_list.each { |producto| tienda.crear_nvo(producto)}