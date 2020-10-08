class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    puts @contents
  end

  def scramble(method)
    @method = method
    @contents = @method.scramble(@contents)
  end
  def unscramble
    @contents = @method.unscramble(@contents)
  end
end

class Advance

  def initialize(steps)
    @steps = steps
  end

  def scramble(contents)
    contents = contents.chars.map { |char|
      (char.ord + @steps).chr }.join
    contents
  end

  def unscramble(contents)
    contents = contents.chars.map { |char|
      (char.ord - @steps).chr }.join
      contents
  end

end

class Reverse

  def scramble(contents)
    contents.reverse!
  end

  def unscramble(contents)
    contents.reverse!
  end

end

diary = ScrambledDiary.new("Cats and dogs are great")
diary.read
diary.scramble(Advance.new(3))
diary.read
diary.unscramble
diary.read
diary.scramble(Reverse.new)
diary.read
diary.unscramble
diary.read
