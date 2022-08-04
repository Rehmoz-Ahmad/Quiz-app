require 'timeout'
require "csv"

file = CSV.parse(File.read("problems.csv"))

def QUEST(quest, ans, timeRemaining)
    puts "\nANSWER THE FOLLOWING QUESTIONS\n"
    puts quedt
    Timeout::timeout(timeRemaining) do
      user = gets.chomp
      return user === ans
    end
  rescue Timeout::Error
    return false
  end
  

timeRemaining = 5
score = 0

for array in 0..file.length-1 do
    correct = Q(file[array][0], file[array][1], timeRemaining)
    score += 1 if correct
end

puts "Total no. of questions: #{file.length}"
puts "Obtained marks: #{score}"
