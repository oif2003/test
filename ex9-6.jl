#~ Exercise 9-6
#~ Write a function called isabecedarian that returns true if the letters
#~ in a word appear in alphabetical order (double letters are ok). How many 
#~ abecedarian words are there?

function isabecedarian(word)
	for i = 1 : length(word)
		if i > 1
			prev = word[i - 1]
		else
			prev = word[1]
		end
		if word[i] < prev 
			return false 
		end
	end  
	return true  
end

let count = 0
	for line in eachline((@__DIR__) * "\\words.txt") 
		if isabecedarian(line)
			println(line)
			count += 1
		end
	end
	println("There are ", count, " abecedarian words.")
end
println((@__DIR__))
println("🍭🐢😸")	
println("𝒜, ℬ, 𝒞, 𝒟, ℰ, ℱ, 𝒢, ℋ, ℐ, 𝒥, 𝒦, ℒ, ℳ, 𝒩, 𝒪, 𝒫, 𝒬, ℛ, 𝒮, 𝒯, 𝒰, 𝒱, 𝒲, 𝒳, 𝒴, 𝒵")

# for i=1:100000
# 	println(i)
# end

a = 1
b = 2
