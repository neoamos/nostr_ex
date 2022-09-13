defmodule Nostr.MixProject do
  use Mix.Project

  def project do
    [
      app: :nostr,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  defp deps do
    [
      {:secp256k1, git: "https://git.sr.ht/~sgiath/secp256k1"},
      {:jason, "~> 1.3"}
    ]
  end
end
