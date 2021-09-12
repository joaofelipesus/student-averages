defmodule Student
  @enforce_keys [:name]
  defstruct name: nil, results: []
end
