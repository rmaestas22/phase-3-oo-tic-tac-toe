class TicTacToe
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]
    def initialize
        @board = [" "," "," "," "," "," "," "," "," "]
    end
    def display_board
        puts "-----------"
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    def input_to_index(user_input)
        @input = user_input.to_i
        @input -=1
    end
    def move(index, token="X")
        @board[index] = token
    end
    def position_taken?(index)
        if @board[index]==" "
            false
        else
            true
        end
    end
    def valid_move?(position_to_check)
        if position_to_check < 10 && @board[position_to_check]==" "
            true
        else
            false
        end
    end
    def turn_count
        9-@board.count(" ")
    end
    def current_player
        turn_count.even? ? "X" : "O"
    end
    def turn
        puts "Enter move."
        move = gets.chomp
        indexed = input_to_index(move)

        if valid_move?(indexed)
            current = current_player
            move(indexed, current)
            display_board
        else
            turn
        end
    end

end

test = TicTacToe.new
test.turn
test.turn