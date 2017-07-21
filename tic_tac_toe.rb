
class Game
	
	def initialize
		@array = Array.new(4) {Array.new(4, "|_|")}
		@array[0][1] = "|A|"
		@array[0][2] = "|B|"
		@array[0][3] = "|C|"
		@array[1][0] = "|1|"
		@array[2][0] = "|2|"
		@array[3][0] = "|3|"
		@x_win = false
		@o_win = false
	end

	def show_board
		@array.each do |arr|
			arr.each do |item|
			print "#{item}"
			end
		print "\n"
		end
	end

	def get_x_move
		puts "Player X, enter your move"
		x_move = gets.chomp

		case x_move
		when "a1"
			@array[1][1] = "|X|"
		when "a2"
			@array[2][1] = "|X|"
		when "a3"
			@array[3][1] = "|X|"
		when "b1"
			@array[1][2] = "|X|"
		when "b2"
			@array[2][2] = "|X|"
		when "b3"
			@array[3][2] = "|X|"
		when "c1"
			@array[1][3] = "|X|"
		when "c2"
			@array[2][3] = "|X|"
		when "c3"
			@array[3][3] = "|X|"
		end
	end


	def get_o_move
		puts "Player O, enter your move"
		x_move = gets.chomp

		case x_move
		when "a1"
			array[1][1] = "|O|"
		when "a2"
			array[2][1] = "|O|"
		when "a3"
			array[3][1] = "|O|"
		when "b1"
			array[1][2] = "|O|"
		when "b2"
			array[2][2] = "|O|"
		when "b3"
			array[3][2] = "|O|"
		when "c1"
			array[1][3] = "|O|"
		when "c2"
			array[2][3] = "|O|"
		when "c3"
			array[3][3] = "|O|"
		end
	end

	def win?
		if @array[1][1] != "|_|" && @array[1][2] != "|_|" && @array[1][3] != "|_|"
			if @array[1][1] == "|X|" && @array[1][2] == "|X|" && @array[1][3] == "|X|"
				x_win = true
			elsif @array[1][1] == "|O|" && @array[1][2] == "|O|" && @array[1][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[2][1] != "|_|" && @array[2][2] != "|_|" && @array[2][3] != "|_|"
			if @array[2][1] == "|X|" && @array[2][2] == "|X|" && @array[2][3] == "|X|"
				x_win = true
			elsif @array[2][1] == "|O|" && @array[2][2] == "|O|" && @array[2][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[3][1] != "|_|" && @array[3][2] != "|_|" && @array[3][3] != "|_|"
			if @array[3][1] == "|X|" && @array[3][2] == "|X|" && @array[3][3] == "|X|"
				x_win = true
			elsif @array[3][1] == "|O|" && @array[3][2] == "|O|" && @array[3][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[1][1] != "|_|" && @array[2][1] != "|_|" && @array[3][1] != "|_|"
			if @array[1][1] == "|X|" && @array[2][1] == "|X|" && @array[3][1] == "|X|"
				x_win = true
			elsif @array[1][1] == "|O|" && @array[2][1] == "|O|" && @array[3][1] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[1][2] != "|_|" && @array[2][2] != "|_|" && @array[3][2] != "|_|"
			if @array[1][2] == "|X|" && @array[2][2] == "|X|" && @array[3][2] == "|X|"
				x_win = true
			elsif @array[1][2] == "|O|" && @array[2][2] == "|O|" && @array[3][2] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[1][3] != "|_|" && @array[2][3] != "|_|" && @array[3][3] != "|_|"
			if @array[1][3] == "|X|" && @array[2][3] == "|X|" && @array[3][3] == "|X|"
				x_win = true
			elsif @array[1][3] == "|O|" && @array[2][3] == "|O|" && @array[3][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[1][1] != "|_|" && @array[2][2] != "|_|" && @array[3][3] != "|_|"
			if @array[1][1] == "|X|" && @array[2][2] == "|X|" && @array[3][3] == "|X|"
				x_win = true
			elsif @array[1][1] == "|O|" && @array[2][2] == "|O|" && @array[3][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if @array[3][1] != "|_|" && @array[2][2] != "|_|" && @array[1][3] != "|_|"
			if @array[3][1] == "|X|" && @array[2][2] == "|X|" && @array[1][3] == "|X|"
				x_win = true
			elsif @array[3][1] == "|O|" && @array[2][2] == "|O|" && @array[1][3] == "|O|"
				o_win = true
			else
				x_win = false
				o_win = false
			end
		end

		if x_win == true
			puts "Player X wins!"
			return true
		elsif o_win == true
			puts "Player O wins!"
			return true
		else
			return false
		end
	end

end

my_game = Game.new
my_game.show_board



