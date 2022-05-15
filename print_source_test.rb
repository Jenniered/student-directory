def file_name
  puts __FILE__
  puts File.dirname(__FILE__)
  puts File.basename(__FILE__)
end

def print_code
  File.open(__FILE__, "r") do |file|
    file.readlines.each do |line|
      puts line 
    end
  end
end

file_name
print_code
