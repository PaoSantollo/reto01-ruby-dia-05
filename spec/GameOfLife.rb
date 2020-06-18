class Tablero
  def imprimir_tablero(tablero)
    tablero.each_with_index do |element, index|
      puts " #{element}"
    end
    print "\n"
  end
end

class Celula
  def evaluar_celula(tablero)
    result = tablero.find { |item| item.include?("1") }
    @cel = result
  end
end

class Reglas
  def contador
  end
end

class Tablero13 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

class Tablero21 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

class Tablero23 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

class Tablero31 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

class Tablero32 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

class Tablero33 < Reglas
  def contador(contador_vecino)
    contador_vecino += 1
  end
end

tablero = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
tab = Tablero.new
tab.imprimir_tablero(tablero)
cel = Celula.new
cel.evaluar_celula(tablero)
tab.imprimir_tablero(tablero)
Regla = Reglas.new
posisiones = [Tablero11.new, Tablero12.new, Tablero13.new, Tablero21.new, Tablero23.new, Tablero31.new, Tablero32.new, Tablero33.new]
posisiones.each do |reglas|
  reglas.contador
end
