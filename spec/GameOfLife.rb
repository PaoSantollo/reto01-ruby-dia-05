class Juego
  def localizacion_celulas_vivas(tablero, ubicacionx, ubicaciony, limite)
    indice = 0
    y = 0
    x = 0
    while y < limite
      while x < limite
        localizacion = tablero[x][y]
        resultado = case localizacion
          when 1
            ubicacionx[indice] = x
            ubicaciony[indice] = y
            indice = indice + 1
          end
        x = x + 1
      end
      y = y + 1
      x = 0
    end
  end
end

class Tablero
  def imprimir_tablero(tablero, limite)
    x = 0
    y = 0
    while y < limite
      while x < limite
        print tablero[x][y]
        x = x + 1
      end
      print "\n"
      y = y + 1
      x = 0
    end
    print "\n"
  end
end

class Reglas
  def evaluar_vecinos(ubicacionx, ubicaciony, vecinos, tablero, limite)
    x = 0
    y = 0
    while y < limite
      while x < limite
        contador_vecinos = 0
        x = ubicacionx[i]
        y = ubicaciony[i]
        xAuxiliar = x
        yAuxiliar = y + 1
        tablero_auxiliar = tablero[xAuxiliar][yAuxiliar]
        resultado = case tablero_auxiliar
          when 1
            contador_vecinos = contador_vecinos + 1
          end
        xAuxiliar = x - 1
        yAuxiliar = y + 1
        tablero_auxiliar = tablero[xAuxiliar][yAuxiliar]
        resultado = case tablero_auxiliar
          when 1
            contador_vecinos = contador_vecinos + 1
          end
        contador = contador_vecinos
        resultado = case contador
          when 1..0
            vecinos[i] = 0
          when 4..9
            vecinos[i] = 0
          when 2..3
            vecinos[i] = 1
          end
        x = x + 1
      end
      y = y + 1
      x = 0
    end
  end
end

class Celula
  def estado()
  end
end

class Muere < Celula
  def estado(ubicacionx, ubicaciony, tablero, vecinos, limite)
    x = 0
    y = 0
    while y < limite
      while x < limite
        vecino = vecinos[i]
        resultado = case vecino
          when 0
            m = ubicacionx[i]
            n = ubicaciony[i]
            tablero[m][n] = 0
          end
        x = x + 1
      end
      y = y + 1
      x = 0
    end
  end
end

class Vive < Celula
  def estado(ubicacionx, ubicaciony, tablero, vecinos, limite)
    x = 0
    y = 0
    while y < limite
      while x < limite
        vecino = vecinos[i]
        resultado = case vecino
          when 1
            m = ubicacionx[i]
            n = ubicaciony[i]
            tablero[m][n] = 1
          end
        x = x + 1
      end
      y = y + 1
      x = 0
    end
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
ubicacionx = Array.new(10, 0)
ubicaciony = Array.new(10, 0)
vecinos = Array.new(10, 0)
ubicacionmuertasx = Array.new(10, 0)
ubicacionmuertasy = Array.new(10, 0)
limite = 9
obj = Juego.new
tab = Tablero.new
tab.imprimir_tablero(tablero, limite)
obj.localizacion_celulas_vivas(tablero, ubicacionx, ubicaciony, limite)
reglas = Reglas.new
reglas.evaluar_vecinos(ubicacionx, ubicaciony, vecinos, tablero, limite)
celula = Celula.new
estado = [Muere.new, Vive.new]
estado.each do |celula|
  celula.estado(ubicacionx, ubicaciony, tablero, vecinos)
end
tab.imprimir_tablero(tablero, limite)
