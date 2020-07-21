defmodule GiacobotTest do
  use ExUnit.Case

  @phrases [
    "Ma ôme",
    "Meu zovo",
    "2 X-elefante no romário lanches",
    "Exemplo de cultura",
    "Seloco",
    "Lá em DV",
    "TEU CU BURRO",
    "TEU FIOTE",
    "SARTE LôCO",
    "Ainda bem que to na CIPA",
    "Meu pau de rayban"
  ]

  test "must contain the phrases" do
    assert Enum.member?(@phrases, Giacobot.say())
  end

  test "must not contain the phrases" do
    refute Enum.member?(["bom dia", "ola"], Giacobot.say())
  end
end
