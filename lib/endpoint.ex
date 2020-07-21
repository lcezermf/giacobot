defmodule Giacobot.Endpoint do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, Giacobot.say())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
