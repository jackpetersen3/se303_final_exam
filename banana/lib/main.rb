# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

class Story
  def initialize(beginning, middle, conclusion)
    @beginning = beginning
    @middle = middle
    @conclusion = conclusion
  end

  def split_size
    @beginning.split.size +
    @middle.split.size +
    @conclusion.split.size
  end

  def split 
    @beginning.size + @middle.size + @conclusion.size
  end
end


def word_count(beginning, middle, conclusion)
  Story.new(beginning, middle, conclusion).split_size
end

def letter_count(beginning, middle, conclusion)
  Story.new(beginning, middle, conclusion).split
end

def period_count(beginning, middle, conclusion)
  beginning.scan(/\./).size +
  middle.scan(/\./).size +
  conclusion.scan(/\./).size
end
