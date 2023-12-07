defmodule KnowLedge.Repo.Migrations.Access do
  use Ecto.Migration

  def change do
    execute """
    ELECTRIC GRANT ALL
    ON items
    TO ANYONE;
    """
  end
end
