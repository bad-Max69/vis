require "./method2.rb"

p 'vvedi slovo'

s = gets.chomp
slovo = s.split("") #получаем массив букв из S

system "cls"

puts " ti vvel slovo iz #{slovo.size} bukv"


h_bukvi = []
p_bukvi = []
errors = 0

while errors <= 7
	puts
	find(slovo, h_bukvi)
	puts "good bukvy: #{h_bukvi.join(", ")}"
	puts "bad bukv #{p_bukvi.join(", ")}"
	puts "errors: #{errors}"
	puts "vvedi bukvu"
	letter = gets.chomp.to_s.downcase

	if slovo.include? letter
			 h_bukvi << letter
		else p_bukvi << letter and errors +=1
	end
	if slovo.uniq.size == h_bukvi.uniq.size
		p "pobeda"
		exit
	end
end

p "game over"


