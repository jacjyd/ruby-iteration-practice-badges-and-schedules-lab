
def badge_maker (name)
    p "Hello, my name is #{name}."
end 

def batch_badge_creator(list)
    list.map {|name| badge_maker(name)}
end 

def assign_rooms (list)
    room_assignments = []
    list.each_with_index do |speaker, index|
        room_assignments << "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
    end 
    room_assignments
end 

def printer (list)
    batch_badge_creator(list).each{|badge| puts badge}
    assign_rooms(list).each{|assignment| puts assignment}
end     