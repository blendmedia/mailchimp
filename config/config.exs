# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :mailchimp,
  apikey: "your apikey-us12"

import_config "#{Mix.env}.exs"