defmodule Giacobot do

  @phrases [
    "Mazome",
    "Meuzovo",
    "2 X-elefante no romário lanches",
    "Exemplo de cultura",
    "Seloco",
    "Lá em DV",
    "TEU CU BURRO",
    "TEU FIOTE",
    "SARTE LôCO",
    "Ainda bem que to na CIPA",
    "Meu pau de rayban",
    "Sarte nágua capivara",
    "Pedra no rim é o djanho",
    "Va lá pastar, seu cavalo de teta",
    "Resmini muito tanso",
    "em 2013 ganhei o Oscar mais guloso"
  ]

  def say, do: Enum.random(@phrases)

  def phrases, do: @phrases
end
