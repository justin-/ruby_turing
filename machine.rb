require_relative 'tape.rb'

class TuringMachine
  attr_accessor :state, :tape, :steps, :cell
  
  def initialize(data)
    @tape = Tape.new(data)
    @cell = 0
    @state = :s0
    @steps = 0    
  end

  def scan
    tape.read(cell)
  end
  
  def write(cell, data)
    tape.write(cell, data)
  end

  def advance_left
    if (@cell - 1) < 0
      @state = :s2
    else
      @cell -= 1
    end
  end
    
  def advance_right
    # tape extends infinitely
    if (@cell + 1) >= tape.length
      tape.push_right(0)
    else
      @cell += 1
    end
  end
  
  def run
    puts tape.inspect    
    loop do
    @v = scan    
    case state    
    when :s0

      if @v == 1
        puts "@#{cell} {s0, 1, s0, »}"
        advance_right
      elsif @v == 0
        puts "@#{cell} {s0, 0, s1, 1}"
        @state = :s1
        write(cell, 1)
      end
      
    @steps += 1
      
    when :s1

      if @v == 1
        puts "@#{cell} {s1, 1, s1, «}"
        advance_left
      elsif @v == 0
        puts "@#{cell} {s1, 0, s2, »}"
        @state = :s2
        advance_right
      end    
      
    @steps += 1
           
    else
      puts tape.inspect
      puts "Halted on cell #{cell} (tape length #{tape.length}) after #{steps} steps."
      break      
    end    
    end    
  end
end
