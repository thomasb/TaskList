# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tasklist2_session',
  :secret      => '246f5d78b5e0e97cdc038912385313500c41cffd217e6baaa0a181a9460830999daff1e8bd89e97f335583d09934abf042f5d1cda11cd3b8d350843830ea3674'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
