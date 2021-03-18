defmodule Legato.Mixfile do
  use Mix.Project

  def project do
    [app: :legato,
     version: "0.2.1",
      elixir: "~> 1.7",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/data-twister/legato-ex",
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp description do
    "Google Analytics Reporting API v4 in Elixir"
  end

  defp package do
    [
      maintainers: ["Tony Pitale, Jason Clark"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/data-twister/legato-ex"}
    ]
  end

  defp deps do
    [
    {:tesla, "~> 1.4.0"},
     {:httpoison, "~> 1.8"},
    {:jason, ">= 1.0.0"},
    {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
