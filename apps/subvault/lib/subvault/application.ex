defmodule Subvault.Application do
  @moduledoc """
  The Subvault Application Service.

  The subvault system business domain lives in this application.

  Exposes API to clients such as the `Subvault.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Subvault.Repo, []),
    ], strategy: :one_for_one, name: Subvault.Supervisor)
  end
end
