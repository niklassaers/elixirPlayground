defmodule RIAKTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "riak test" do
	  Riak.start
	  Riak.configure(host: '192.168.0.11', port: 8098)
	  u = RObj.create(bucket: "user", key: "my_key", data: "My data")
	    |> Riak.put
	  IO.puts u
	  u = Riak.find "user", "my_key"
	  IO.puts u
	  u = u.data("Something else")
	    |> Riak.put
	  IO.puts u
	  Riak.delete u
  end
end
