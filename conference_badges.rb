require 'pry'
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  $badge = Array.new
  attendees.each { |name| $badge.push("Hello, my name is #{name}.") }
  $badge
end

def assign_rooms(attendees)
  $room_assignments = Array.new
  attendees.each_with_index { |name, index| $room_assignments.push ("Hello, #{name}! You'll be assigned to room #{index += 1}!")  }
  $room_assignments
end

def printer(attendees)
  puts "#{$badge}"
  puts "#{$room_assignments}"
end

badge_maker(attendees)
batch_badge_creator(attendees)
assign_rooms(attendees)
printer(attendees)
