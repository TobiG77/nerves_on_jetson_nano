defmodule NervesOnJetsonNanoTest do
  use ExUnit.Case
  doctest NervesOnJetsonNano

  test "greets the world" do
    assert NervesOnJetsonNano.hello() == :world
  end
end
