# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
ArmoryBackend::Application.config.secret_key_base = 'b37edd74f246f45cb34e9ac04bc88759e6f20162e72773637f0179e783007333ddb16612c71ab046013d562bdd466c05ccde8ffc4b3806ba1a1506e9f3fd9eef'
