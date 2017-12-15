#!/usr/bin/env ruby

require 'pp'

# Get numbers, save in array
puts "enter captcha digits"
captcha = gets.chomp.chars
pp captcha

current = 0
look_ahead = 1
result = 0

captcha.each do |digit|
  if digit == captcha[look_ahead]
    result = result + digit.to_i
  end

  look_ahead = look_ahead + 1
end
if captcha[-1] == captcha[0]
  result = result + captcha[-1].to_i
end

pp result