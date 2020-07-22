defmodule GiacobotTest do
  use ExUnit.Case

  @valid_phrases [
    "Mazome",
    "Meuzovo",
    "2 X-elefante no romário lanches"
  ]
  @invalid_phrases ["bom dia", "ola"]

  test "must contain the phrases" do
    assert Enum.member?(@valid_phrases, Giacobot.say())
  end

  test "must not contain the phrases" do
    refute Enum.member?(@invalid_phrases, Giacobot.say())
  end
end
