defmodule Rumbl.Multimedia.Annotation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "annotations" do
    field :at, :integer
    field :body, :string

    belongs_to :user, Rumbl.Accounts.User
    belongs_to :video, Rumbl.Multimedia.Video

    timestamps()
  end

  @doc false
  def changeset(annotations, attrs) do
    annotations
    |> cast(attrs, [:body, :at])
    |> validate_required([:body, :at])
  end
end
