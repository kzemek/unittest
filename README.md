# Unittest
[![Build Status](https://travis-ci.org/lk-geimfari/unittest.svg?branch=master)](https://travis-ci.org/lk-geimfari/unittest)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/unittest/master/logo.png">
  <br>
</p>

**Unittest** is a unit testing library for Elixir was originally inspired by Python standard testing framework. This is a port of unittest Python library for Elixir. It supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections.

API of `unittest` very similar to `unittest` of Python. Below you can see examples.

Python:
```python
def test_equal(self):
    self.assertEqual(22, 23-1)
    
def test_is(self):
    self.assertIsInstance("string", str)
    self.assertIsInstance(True, bool)
    self.assertIsInstance(["one", "two"], list)
```

Elixir:
```elixir
test "equal" do
  assert equal(22, 23-1)
end

test "is" do
  assert is("string", :str)
  assert is(true, :bool)
  assert is([:one, :two], :list)
end
```

## Installation

Just add `:unittest` to deps:
```elixir
def deps do
  [{:unittest, "~> 0.1.0"}]
end
```
and run `deps.get`:
```zsh
➜ mix deps.get
```


## Atention
This is an **experimental** project and it's mean that we do not guarantee stability.

## License
Unittest is licensed under the MIT License. See [LICENSE](/LICENSE) for more information.
