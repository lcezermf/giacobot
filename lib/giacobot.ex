defmodule Giacobot do

  @phrases [
    "Frase 1",
    "Frase 2",
    "Frase 3"
  ]

  def say, do: Enum.random(@phrases)

  def phrases, do: @phrases
end
