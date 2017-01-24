defmodule Unittest.Mixfile do
  use Mix.Project

  def project do
    [app: :unittest,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Unittest is a unit testing library for Elixir was
     originally inspired by Python standard testing framework.",
     package: package()
   ]
  end

  defp package do
    [
      maintainers: ["Likid Geimfari"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/lk-geimfari/unittest"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    []
  end
end
