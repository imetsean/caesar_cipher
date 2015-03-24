
    def caesar_cipher(phrase, shift)

		shift = shift % 26

		alphabet_lc = ("a".."z").to_a
		alphabet_uc = ("A".."Z").to_a 

		lc_converted = phrase.chars.map {|c| alphabet_lc.include?(c) ? (lc_loop(c.ord + shift).chr) : c }

		convert_capital = lc_converted.map {|c| alphabet_uc.include?(c) ? (uc_loop(c.ord + shift).chr) : c }.join("")
	end

	#Note that we have below two methods to loop back from a/A if the shift pushes the characters beyond z/Z. 

	#A-Z (65-90)
	def uc_loop(n)  
		n > 90 ? n % 90 + 64 : n
	end

	#a-z (97-122)
	def lc_loop(n)  
		n > 122 ? n % 122 + 96 : n
	end


describe "Caesar Cipher:" do
	it "Test 1" do
		#test = CaesarCipher.new
    	expect(caesar_cipher("this is a test",4)).to eq("xlmw mw e xiwx")
  	end
end

