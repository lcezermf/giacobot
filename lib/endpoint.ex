defmodule Giacobot.Endpoint do
  use Plug.Router

  @template_dir "lib/templates"

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    render(conn, "index.html", message: Giacobot.say())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

  defp render(%{status: status} = conn, template, assigns \\ []) do
    body =
      @template_dir
      |> Path.join(template)
      |> String.replace_suffix(".html", ".html.eex")
      |> EEx.eval_file(assigns)

    send_resp(conn, (status || 200), body)
  end
end
