defmodule StudentAveragesTest do
  use ExUnit.Case
  doctest StudentAverages

  test "greets the world" do
    assert StudentAverages.hello() == :world
  end
end
