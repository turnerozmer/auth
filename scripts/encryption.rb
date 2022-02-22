# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:

# 1. encrypt a secret and puts encrypted string
# 2. decrypt the encrypted string
# 3. check if decrypted value matches secret


secret_password = "tacos"
encrypted_password = BCrypt::Password.create(secret_password)

test_password = "sushi"
password_matches = BCrypte::Password.new(encrpyted_password) == test_password