defmodule KnowLedge.Repo.Migrations.GetStarted do
  use Ecto.Migration

  def change do
    execute """
    CREATE TABLE accounts (
      id UUID PRIMARY KEY,
      email TEXT NOT NULL,
      created_at TIMESTAMPTZ NOT NULL,
      updated_at TIMESTAMPTZ NOT NULL
    );
    """

    execute "ALTER TABLE accounts ENABLE ELECTRIC;"
  end
end
