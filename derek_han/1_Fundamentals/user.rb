class Deck
	attr_accessor :deck
	def initialize()
		@deck = [
                "c1","c2",'c3','c4','c5','c6','c7','c8','c9','c10','cj','cq','ck','h1','h2','h3','h4','h5','h6','h7','h8','h9','h1','hj','hq','hk','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','dj','dq','dk','s1','s2','s3','s4','s5','s6','s7','s8','s9','s10','sj','sq','sk'
            	]
    end

	def shuffle
		puts "Shuffled : ", deck.shuffle!.to_s
		print "Number of Card: ", deck.length, "\n"
		# return @deck
		return self
	end

	def deal
		shiftCard = deck.shift
		# print "Dealt: ",deck.shift, "\n"
		# print shiftCard
		return shiftCard
	end
 
	def show
		puts "showDeckNow: ", deck.to_s
		print "Number of Card: ", deck.length
		return self
	end

	def reset
		@deck = [
                "c1","c2",'c3','c4','c5','c6','c7','c8','c9','c10','cj','cq','ck','h1','h2','h3','h4','h5','h6','h7','h8','h9','h1','hj','hq','hk','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','dj','dq','dk','s1','s2','s3','s4','s5','s6','s7','s8','s9','s10','sj','sq','sk'
            	]
        puts "ResetDeck: ", deck.to_s
        return self
    end
end

class Player
	attr_accessor :name, :hand
	def initialize(name)
		@name = name
		@hand = []
	end

	def showHand
		print "#{@name}, #{@hand}", "\n"
	end

	def getCard(card)
		print hand.push(card), "\n"

		return self
	end
end

deck = Deck.new
deck.shuffle

player1 = Player.new("steven")
player1.showHand

player1.getCard(deck.deal).getCard(deck.deal).getCard(deck.deal)
# player1.getCard(deck.deal)
player1.showHand
deck.show

