use Mix.Config

config :giacobot, port: 80

config :giacobot, Giacobot.Endpoint,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  url: [host: "giacobot.gigalixirapp.com", port: 443]
