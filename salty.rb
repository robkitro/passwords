require 'colorize'
require 'digest'
require 'SecureRandom'

def salty
  loop do

  puts " enter password"
  password = gets.chomp.to_s

  pass_salt = SecureRandom.base64
  pass_hash = Digest::SHA256.hexdigest(password+pass_salt)



  password_length = password.length
  hashlength = pass_hash.length

  puts "the password is #{password}".blue
  puts "the salt is #{pass_salt}"
  puts "the hash is #{pass_hash}".green
  puts " the password has #{password_length} characters".yellow
  puts " the hash has #{hashlength} characters".magenta
end
end

salty
