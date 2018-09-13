class Game
	
	# needs "play"  (set grid point) method
	# needs "is won?" method
	#
	# _____ --------------- 
	#| | | |
	#| | | |
	#| | | |
	#-------

	def initialize
		@grid = [[" "," "," "],[" "," "," "],[" "," "," "]]
		@myturn = true
	end

	def resetGrid
		@grid = [[" "," "," "],[" "," "," "],[" "," "," "]]
	end
	def displayHelp
		puts "       "
		puts "       "
		puts "Type in Number of Field to play"
		puts " _____ "
		puts "|7|8|9|"
		puts "|4|5|6|"
		puts "|1|2|3|"
		puts "       "
		puts "       "
	end

	def getLine(num)
		result = ""
		@grid[num].each do |c|
			result += c+"|"
		end
		return result
	end


	def displayGrid
		i = 0
		puts "       "
		puts " _____ "
		while i<3
			puts "|"+getLine(i)
			i+=1
		end
		puts "        "
	end

	def iswon?


		return false
	end

	def setField(x,y)
		if(@myturn==true)
			@grid[x][y]="X"
		else
			@grid[x][y]="O"
		end
	end

	

	def play
		@myturn = true

		while(!iswon?())

			input = gets.chomp
			if input == "7"
				setField(0,0)
			elsif input == "8"
				setField(0,1)
			elsif input == "9"
				setField(0,2)
			elsif input == "4"
				setField(1,0)
			elsif input == "5"
				setField(1,1)
			elsif input == "6"
				setField(1,2)
			elsif input == "1"
				setField(2,0)
			elsif input == "2"
				setField(2,1)
			elsif input == "3"
				setField(2,2)
			end

			if(@myturn)
				@myturn = false
			else
				@myturn = true
			end

			displayGrid()
		end
	end




end


newgame = Game.new()

newgame.resetGrid()
newgame.displayHelp()
newgame.displayGrid()
newgame.play()
