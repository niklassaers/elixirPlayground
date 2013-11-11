defmodule TCPClient.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixirPlayground,
      version: "0.0.1",
      elixir: "~> 0.11.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:socket, :riakc]]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ { :socket, "~> 0.1.3", git: "https://github.com/meh/elixir-socket.git" },
	  { :'riak-elixir-client', github: "niklassaers/riak-elixir-client" } ]
  end
end
