import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :youtube_tutorial_forum1, YoutubeTutorialForum1.Repo,
  database: Path.expand("../youtube_tutorial_forum1_test.db", __DIR__),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :youtube_tutorial_forum1, YoutubeTutorialForum1Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "4JH1ytWJy7HGlzPZhXhApukogcN1RkxeJJM5p8BdJILDGbzQEC7xT1MjBOG7sc3T",
  server: false

# In test we don't send emails
config :youtube_tutorial_forum1, YoutubeTutorialForum1.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
