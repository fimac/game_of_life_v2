defmodule GameOfLifeV2.Repo do
  use Ecto.Repo,
    otp_app: :game_of_life_v2,
    adapter: Ecto.Adapters.Postgres
end
