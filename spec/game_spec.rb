require "GameOfLife.rb"

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

RSpec.describe Celula do
  it "clase Celula" do
    cel = Celula.new
    expect(cel).to be_kind_of(Celula)
  end
  it "evaluar celula" do
    cel = Celula.new
    expect(cel).to respond_to(:evaluar_celula)
    puts "... test evaluacion de la celula.. \n"
  end
end
