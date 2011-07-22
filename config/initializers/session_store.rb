# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mangle_session',
  :secret      => '7685a7a3ec99724d52e5bdd5f40401e0620bc750015407636fe5b40dfdf5b563fde931295b714ca685ecf96e06d5a84488270b7d0374266e061390fdea5db31f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
