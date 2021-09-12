defmodule Student do
  @moduledoc """
    Define sturct student and a function used to return only first and last name.
  """

  @enforce_keys [:name]
  defstruct name: nil, results: []

  @doc """
    Reduce student name only to first and last names

    ## Parameters

    - complete_name: student full name
  """
  def first_and_last_name(complete_name) do
    first_name = first_name(complete_name)
    last_name = last_name(complete_name)
    "#{first_name} #{last_name}"
  end

  @doc """
    Return student first name

    ## Parameters

    - complete_name: name separated by spaces
  """
  defp first_name(complete_name) do
    String.split(complete_name, " ")
    |> hd
  end

  @doc """
    Return student last name

    ## Parameters

    - complete_name: name separated by spaces
  """
  defp last_name(complete_name) do
    String.split(complete_name, " ")
    |> List.last()
  end
end
