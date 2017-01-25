defmodule UnittestTest do
  use ExUnit.Case
  import Unittest

  test "is" do
    assert is(:atom, :atom)
    assert is(666, :int)
    assert is("String", :str)
    assert is(3.14159265359, :float)
    assert is(<<60, 33, 68, 79, 67>>, :bin)
    assert is(<<1 :: size(1)>>, :bitstring)
    assert is(%{"one" => :one, 2 => :two}, :map)
    assert is(nil, :nil)
    assert is(344, :number)
    assert is(3.44, :number)
    assert is({:ok, "OK"}, :tuple)
    assert is(true, :bool)
    assert is([:one, :two], :list)

    pid = spawn(fn -> :ok end)
    assert is(pid, :pid)

    function = fn() -> :something end
    assert is(function, :function)

    function = fn(_, _) -> :something end
    assert is(function, 2, :function)

    assert is(:something, :object) == {:error, :unknow_term}
  end

  test "equal" do
    assert equal(:term, :term)
    assert equal("term", "term")
  end

  test "greater" do
    assert greater(22, 21)
    assert greater(:atom, 22)
    assert greater(fn() -> :ok end, :atom)
    assert greater(spawn(fn -> :ok end), fn() -> :ok end)
    assert greater({:tuple, "tuple"}, spawn(fn -> :ok end))
    assert greater(%{"one" => :one, 2 => :two}, {:tuple, "tuple"})
    assert greater([:atom, "list"], %{"one" => :one, 2 => :two})
    assert greater(<<1 :: size(1)>>, [:atom, "list"])
  end

  test "is not" do
    some_var = "not an atom"
    assert is_not(some_var, :atom)
  end

  test "great or equal" do
    assert greater_equal(22, 22)
  end

  test "in" do
    list = [:atom, ["list"], 256]
    assert in_(list, :atom)
  end

  test "not in" do
    list = [:atom, ["list"], 256]
    assert not_in(list, {:atom})
  end

  test "less" do
    assert less(245, 567)
    assert less(%{"one" => :one}, [:atom, "list"])
  end

  test "less or equal" do
    assert less_equal(22, 32)
  end

  test "is empty" do
    assert is_empty([])
    assert is_empty({})
    assert is_empty(%{})
    assert is_empty("")
  end

end
