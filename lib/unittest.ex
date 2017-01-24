
defmodule Unittest do
  @moduledoc ~S"""
  This module help you write tests.
  Unittest provider useful functions from unittest framework of Python
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
  def is(_, _), do: :unknow_term
  def is(term, :function), do: is_function(term)
  def is(term, arity, :function), do: is_function(term, arity)

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
end
