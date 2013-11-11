defmodule TCPClientTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "tcp test" do
    sock = Socket.TCP.connect! "localhost", 22, packet: :line
	[SSHVer, OpenSSHVer] = Regex.run %r"SSH-(.*?)-OpenSSH_(.*?)$", sock |> Socket.Stream.recv!
	IO.puts "Found a server version #{OpenSSHVer} speaking SSH v#{SSHVer}"
  end
end
