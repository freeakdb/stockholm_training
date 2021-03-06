# Import all plugins from `rel/plugins`
# They can then be used by adding `plugin MyPlugin` to
# either an environment, or release definition, where
# `MyPlugin` is the name of the plugin module.
Path.join(["rel", "plugins", "*.exs"])
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: Mix.env()

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set overlays: [
    {:mkdir, "priv"},
    {:copy, "priv/riak_core.schema", "priv/riak_core.schema"}
  ]
  set cookie: "riak"
  set dev_mode: true
  set include_erts: false
end

environment :dev1 do
  set overlays: [
    {:mkdir, "priv"},
    {:copy, "priv/riak_core.schema", "priv/riak_core.schema"}
  ]
  set cookie: "riak"
  set dev_mode: true
  set include_erts: false
end

environment :dev2 do
  set overlays: [
    {:mkdir, "priv"},
    {:copy, "priv/riak_core.schema", "priv/riak_core.schema"}
  ]
  set cookie: "riak"
  set dev_mode: true
  set include_erts: false
end

environment :dev3 do
  set overlays: [
    {:mkdir, "priv"},
    {:copy, "priv/riak_core.schema", "priv/riak_core.schema"}
  ]
  set cookie: "riak"
  set dev_mode: true
  set include_erts: false
end

environment :prod do
  set overlays: [
    {:mkdir, "priv"},
    {:copy, "priv/riak_core.schema", "priv/riak_core.schema"}
  ]
  set cookie: "riak"
  set include_erts: true
  set include_src: false
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :storix do
  set version: current_version(:storix)
   set applications: [
  #   :lager,
     :runtime_tools,
    :cuttlefish,
  #   :logger_lager_backend,
  #   :logger,
   ]


end
