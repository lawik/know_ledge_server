defmodule KnowLedge.Repo.Migrations.DefaultAccount do
  use Ecto.Migration

  def change do
    execute """
    insert into accounts (id, email, created_at, updated_at)
    values
    (gen_random_uuid(), 'lars@underjord.io', now(), now());
    """
  end
end
