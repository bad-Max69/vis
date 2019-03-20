def find(slovo, h_bukvi)
	result = ""

	for b in slovo
		if h_bukvi.include? b
			result += b + " "
		else 
			result += "__ "
		end
	end
	p result
end