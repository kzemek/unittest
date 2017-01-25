# Unittest
[![Build Status](https://travis-ci.org/lk-geimfari/unittest.svg?branch=master)](https://travis-ci.org/lk-geimfari/unittest)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/unittest/master/logo.png">
  <br>
</p>

**Unittest** is a unit testing library for Elixir was originally inspired by Python standard testing framework. This is a port of unittest Python library for Elixir. It supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections.

API of `unittest` very similar to `unittest` of Python. In example below you can see how to check equality of values:

Python:
```python
# ...
def test_something(self):
    self.assertEqual(22, 23-1)
```

Elixir:
```elixir
# ...
test "something" do
  assert equal(22, 23-1)
end
```

### Usage

```elixir
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

    assert is(spawn(fn -> :ok end), :pid) 
    assert is(fn() -> :nicht end, :function)
  end

  test "equal" do
    assert equal(:term, :term)
  end

  test "is not" do
    assert is_not("an atom", :atom)
  end
  
  test "not in" do
    list = [:atom, ["list"], 256]
    assert not_in(list, {:atom})
  end
  
  test "greater" do
    assert greater([:atom, "list"], %{"one" => :one, 2 => :two})
  end

  test "less" do
    assert less(245, 567)
  end
  
end
```

Just add `:unittest` to deps:
```elixir
def deps do
  [{:unittest, "~> 0.1.0"}]
end
```

### Atention
This is an **experimental** project and it's mean that we do not guarantee stability.

### License
Unittest is licensed under the MIT License. See [LICENSE](/LICENSE) for more information.
