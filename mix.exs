defmodule Redcap.MixProject do
  use Mix.Project

  def project do
    [
      app: :redcap,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:xlsxir],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:xlsxir, "~> 1.6.2"},
        {:csv, "~> 2.0.0"}
    ]
  end
end