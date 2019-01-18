require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map {|name| [badge_maker(name)]}
  attendees
end

def assign_rooms(attendees)
  x = 0
  attendees.each do |name|
    x += 1
    return ["Hello, #{name}! You'll be assigned to room #{x}!"]
  end
end

def printer(attendees)
  x = 0
  attendees.each {|name| puts "Hello, my name is #{name}."}
  attendees.each do
    |name|
    x += 1
    puts "Hello, #{name}! You'll be assigned to room #{x}!"
  end
end
