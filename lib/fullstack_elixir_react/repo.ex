defmodule FullstackElixirReact.Repo do
  use Ecto.Repo,
    otp_app: :fullstack_elixir_react,
    adapter: Ecto.Adapters.MyXQL
end
