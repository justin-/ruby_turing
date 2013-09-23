class Tape
  attr_accessor :tape, :length

  def initialize(data)
    @tape = Array.new(data)
  end

  def read(cell)
    tape[cell]
  end
  
  def write(cell, data)
    tape[cell] = data
  end
  
  def push_right(data)
    tape.push(data)
  end
  
  def length
    tape.length
  end
end
