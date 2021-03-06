defmodule ElixirBench.Repo.Migrations.CreateRepos do
  use Ecto.Migration

  def change do
    create table(:repos) do
      add :owner, :string
      add :name, :string

      timestamps()
    end

    create unique_index(:repos, [:owner, :name])
  end
end
