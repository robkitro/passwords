
gem "scrypt-ruby"
require "scrypt"
require 'colorize'



def scrypty
  loop do

  puts " enter password"
  password = gets.chomp.to_s


  pass_hash = SCrypt::Password.create(password, cost:10)


  password_length = password.length
  hashlength = pass_hash.length

  puts "the password is #{password}".blue
  puts "the hash is #{pass_hash}".green

  puts " the password has #{password_length} characters".yellow
  puts " the hash has #{hashlength} characters".magenta
  end
end

scrypty
