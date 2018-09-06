defmodule Pinna.Factory do
  use ExMachina.Ecto, repo: Pinna.Repo

  def bookmark_factory do
    %{
      title: "Something I need to do",
      description: "List of steps I need to complete"
    }
  end
end
