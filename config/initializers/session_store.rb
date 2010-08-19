# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_JetJaunt_session',
  :secret      => '2bad09edb2b20010c42fa79398b344603ddc098d7ccfec83a8be828b2a09b58727bd3289bc228bc069e8ed0478388534c93c1a165a8136030da4540b0ae31276'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
