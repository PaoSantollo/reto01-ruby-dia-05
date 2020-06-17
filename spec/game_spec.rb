require "GameOfLife.rb"

RSpec.describe Juego do
  it " clase juego" do
    juego = Juego.new
    expect(juego).to be_kind_of(Juego)
  end
  it "localizar celulas vivas" do
    juego = Juego.new
    expect(juego).to respond_to(:localizacion_celulas_vivas)
    puts " test localizacion_celulas_vivas... \n"
  end
end

RSpec.describe Tablero do
  it "clase tablero" do
    tablero = Tablero.new
    expect(tablero).to be_kind_of(Tablero)
  end
  it "impripresion del tablero" do
    tablero = Tablero.new
    expect(tablero).to respond_to(:imprimir_tablero)
    puts "... test impresion tablero.. \n"
  end
end

RSpec.describe Reglas do
  it " clase reglas" do
    reglas = Reglas.new
    expect(reglas).to be_kind_of(Reglas)
  end
  it "reglas del juego" do
    reglas = Reglas.new
    expect(reglas).to respond_to(:evaluar_vecinos)
    puts "... test evaluacion de vecinos.. \n"
  end
end

RSpec.describe Celula do
  it "clase celula" do
    celula = Celula.new
    expect(celula).to be_kind_of(Celula)
  end
  it "estado de la celula " do
    celula = Celula.new
    expect(celula).to respond_to(:estado)
    puts "... testestado de la celula.. \n"
  end
end
