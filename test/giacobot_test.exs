defmodule GiacobotTest do
  use ExUnit.Case

  @invalid_phrases ["bom dia", "ola"]

  test "must contain the phrases" do
    assert Enum.member?(Giacobot.phrases(), Giacobot.say())
  end

  test "must not contain the phrases" do
    refute Enum.member?(@invalid_phrases, Giacobot.say())
  end
end
