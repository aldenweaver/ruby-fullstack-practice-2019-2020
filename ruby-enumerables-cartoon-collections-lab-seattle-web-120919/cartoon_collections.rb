def roll_call_dwarves(array)
  array.each_with_index do |name, index|
    num = index + 1
    puts num.to_s + ". " + name
  end
end

def summon_captain_planet(array)
  array.map do |n|
    n.capitalize + "!"
  end
end

def long_planeteer_calls(array)
  answer = false
   array.each do |n|
     if n.length > 4
      answer = true
     end
   end
   answer
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]

  array.each do |n|
    cheese_types.each do |c|
      if n == c
        return c
      end
    end
  end
  return nil
end
