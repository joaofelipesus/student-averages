defmodule Calculator do
  @moduledoc """
    Defines functions used to calculate students averages and best average.
  """

  @doc """
    Return a list with maps containing students and its averages.

    ## Parameters

    - students: list of Student structs.
  """
  def averages(students) do
    students
    |> Enum.map(&average(&1))
  end

  @doc """
    Return a student average.

    ## Parameters

    - student: student struct
  """
  def average(student) do
    average = calc_average(student.results)
    name = Student.first_and_last_name(student.name)
    %{name: name, average: average}
  end

  @doc """
    Calculate results average.

    ## Paramenters

    - results: list with student grades.
  """
  defp calc_average(results) do
    size = length(results)
    total = Enum.sum(results)
    Float.ceil(total / size, 2)
  end
end
