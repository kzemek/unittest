
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

    iex> Unittest.in_([:atom, :mota], :mota)
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

  def is(term, :atom), do: is_atom(term)
  def is(term, :int), do: is_integer(term)
  def is(term, :float), do: is_float(term)
  def is(term, :str), do: String.valid?(term)
  def is(term, :bitstring), do: is_bitstring(term)
  def is(term, :nil), do: is_nil(term)
  def is(term, :port), do: is_port(term)
  def is(term, :number), do: is_number(term)
  def is(term, :reference), do: is_reference(term)
  def is(term, :pid), do: is_pid(term)
  def is(term, :tuple), do: is_tuple(term)
  def is(term, :list), do: is_list(term)
  def is(term, :bin), do: is_binary(term)
  def is(term, :bool), do: is_boolean(term)
  def is(term, :function), do: is_function(term)
  def is(term, arity, :function), do: is_function(term, arity)
  def is(_, _), do: {:error, :unknow_term}

  def is_empty([]), do: true
  def is_empty({}), do: true
  def is_empty(%{}), do: true
  def is_empty(""), do: true
  def is_empty(_), do: false

  def is_not(term, type), do: not is(term, type)
  def is_not_nil(term), do: not is_nil(term)
  def is_ok(term), do: :ok == term


  def in_(term, el), do: el in term
  def not_in(term, el), do: not el in term

  def equal(a, b), do: a == b
  def greater(a, b), do: a > b
  def greater_equal(a, b), do: a >= b
  def less(a, b), do: a < b
  def less_equal(a, b), do: a <= b

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
