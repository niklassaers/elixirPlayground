defmodule TCPClientTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "tcp test" do
    sock = Socket.TCP.connect! "localhost", 22, packet: :line
	[_, sshVer, openSSHVer] = Regex.run %r"SSH-(.*?)-OpenSSH_(.*?)\r$", sock |> Socket.Stream.recv!
	IO.puts "Found a server version #{openSSHVer} speaking SSH v#{sshVer}"
  end
end
