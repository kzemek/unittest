
defmodule Unittest do
  @moduledoc ~S"""
  Unittest is a unit testing library for Elixir was originally inspired by Python
  standard testing framework. This is a port of unittest Python library for Elixir.

  Unittest provider useful functions from unittest framework of Python.

  Examples:
    iex> Unittest.is(:atom, :atom)
    true

    iex> Unittest.is_empty([])
    true

    iex> Unittest.is_not("an atom", :atom)
    true

    iex> Unittest.is_not_nil(:atom)
    true
    
    iex> Unittest.not_in(["string", :atom, 512], 256)
    true

    iex> Unittest.equal(:a, :a)
    true

    iex> Unittest.greater(512, 256)
    true

    iex> Unittest.greater_equal(256, 256)
    true

    iex> Unittest.less(512, 513)
    true

    iex> Unittest.less_equal(513, 514)
    true
  """

  def is(term, :atom) do
    is_atom(term)
  end

  def is(term, :int) do
    is_integer(term)
  end

  def is(term, :float) do
    is_float(term)
  end

  def is(term, :str) do
    String.valid?(term)
  end

  def is(term, :bitstring) do
    is_bitstring(term)
  end

  def is(term, :nil) do
    is_nil(term)
  end

  def is(term, :port) do
    is_port(term)
  end

  def is(term, :number) do
    is_number(term)
  end

  def is(term, :reference) do
    is_reference(term)
  end

  def is(term, :pid) do
    is_pid(term)
  end

  def is(term, :tuple) do
    is_tuple(term)
  end

  def is(term, :list) do
    is_list(term)
  end

  def is(term, :bin) do
    is_binary(term)
  end

  def is(term, :bool) do
    is_boolean(term)
  end

  def is(term, :function) do
    is_function(term)
  end

  def is(term, arity, :function) do
    is_function(term, arity)
  end

  def is(_, _) do
    {:error, :unknow_term}
  end

  def is_empty([]) do
    true
  end

  def is_empty({}) do
    true
  end

  def is_empty(%{}) do
    true
  end

  def is_empty("") do
    true
  end

  def is_empty(_) do
    false
  end

  def is_not(term, type) do
    not is(term, type)
  end

  def is_not_nil(term) do
    not is_nil(term)
  end

  def is_ok(term), do: :ok == term

  def not_in(term, el) do
    not el in term
  end

  def equal(a, b) do
    a == b
  end

  def greater(a, b) do
    a > b
  end

  def greater_equal(a, b) do
    a >= b
  end

  def less(a, b) do
    a < b
  end

  def less_equal(a, b) do
    a <= b
  end

  def raises, do: raise NotImplementedError
  def almost_equal, do: raise NotImplementedError
  def not_almost_qual, do: raise NotImplementedError
  def set_equal, do: raise NotImplementedError
  def list_equal, do: raise NotImplementedError
  def count_equal, do: raise NotImplementedError
  def tuple_equal, do: raise NotImplementedError
end

defmodule NotImplementedError do
  defexception message: "This feature not implemented yet."
end
