defmodule IotCamp.Mixfile do
  use Mix.Project

  def project do
    [app: :iot_camp,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:hulaaki, "~> 0.0.4"},
     {:poison, "~> 2.0"},
     {:credo, "~> 0.4", only: [:dev, :test]},
     {:mix_test_watch, "~> 0.2", only: :dev},
     {:excheck, "~> 0.5", only: :test},
     {:triq, github: "triqng/triq", only: :test}]
  end
end
