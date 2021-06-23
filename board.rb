class Board

    def initialize
        @board = Array.new(3) { Array.new(3){"_"} }
    end

    def valid?(position)
        if self.empty?(position)
            return true
        else 
            return false
        end
    end

    def empty?(position)
        x = position[0]
        y = position[1]
        if @board[x-1][y-1] == "_"
            return true
        else 
            return false
        end
    end

    # def place_mark(position, mark)

    #     if @board.valid?(position) && @board.empty?(position)
    #         @board[position] = mark
    #     else
    #         puts "position not valid"
    #     end

    # end
    
end