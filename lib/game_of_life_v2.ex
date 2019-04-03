defmodule GameOfLifeV2 do
  @moduledoc """
  GameOfLifeV2 keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  @starter [{1, 1}, {1, 2}, {1, 3}]

  def generator(live_cells \\ @starter) do
    Enum.map(live_cells, fn cell -> find_neighbours(cell) |> dead_or_alive(live_cells) end)
  end

  def find_neighbours({x, y}) do
    [
      {x + 1, y + 1},
      {x - 1, y - 1},
      {x + 1, y - 1},
      {x - 1, y + 1},
      {x + 0, y + 1},
      {x + 0, y - 1},
      {x - 1, y + 0},
      {x + 1, y + 0}
    ]
  end

  def dead_or_alive(neighbours, live_cells) do
    {live, dead} = Enum.split_with(neighbours, fn neighbour -> neighbour in live_cells end)

    live_rules(live)
    dead_rules(dead)
  end

  def live_rules(live) do
    live
    |> Enum.count()
    |> case do
      2 -> true
      3 -> true
      _ -> false
    end
  end

  def dead_rules(live) do
    live
    |> Enum.count()
    |> case do
      3 -> true
      _ -> false
    end
  end
end
