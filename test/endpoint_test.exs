defmodule Giacobot.EndpointTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Giacobot.Endpoint.init([])

  test "GET / returns 200" do
    %{
      state: state,
      status: status,
      resp_body: resp_body
    } =
      conn(:get, "/")
      |> Giacobot.Endpoint.call(@opts)

    assert state == :sent
    assert status == 200
    assert resp_body =~ "Frases inteligentes do Giacomini"
  end

  test "GET * returns 404" do
    conn =
      conn(:get, "/xunda")
      |> Giacobot.Endpoint.call(@opts)

    assert conn.status == 404
  end
end
