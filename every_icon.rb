class Grid
  ON  = '*'
  OFF = '.'
  
  def initialize(size)
    @size = size
    @dots = size * size
    @grid = []
    row = []
    size.times{row << OFF}
    size.times{@grid << row.dup}
  end

  def every(dot)
    if dot == 1
      reset_zero
      draw
      flip dot
      draw
    else
      dot.downto(2) do |i|
        flip i
        every i-1
      end
    end
  end

  def run
    (1..@dots).each{|dot| every dot}
  end

  
  private
  
  def flip(dot)
    x = (dot-1) / @size
    y = (dot-1) % @size
    swap x, y
  end
  
  def reset_zero
    @grid[0][0] = OFF
  end

  def swap(x, y)
    @grid[x][y] = (@grid[x][y] == OFF) ? ON : OFF
  end

  def clear 
    print "\e[2J\e[f"
  end

  def draw
    clear
    (0...@size).each{|row| puts @grid[row].join}
    # sleep 0.0001 # better display
  end
end

Grid.new(8).run
Grid.new(32).run
