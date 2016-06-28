require 'colorize'
require 'digest'


def hashy
  loop do

  puts " enter password"
  password = gets.chomp.to_s


  pass_hash = Digest::SHA256.hexdigest(password)


  password_length = password.length
  hashlength = pass_hash.length

  puts "the password is #{password}".blue
  puts "the hash is \n#{pass_hash}".green

  puts " the password has #{password_length} characters".yellow
  puts " the hash has #{hashlength} characters".magenta
end
end

hashy
