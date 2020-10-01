class SecretDiary

  attr_reader :pages

  def initialize

    @pages = []
    @lock = true

  end

  def lock
    @lock = true
  end

  def unlock
    @lock = false

  end

  def add_entry (entry = gets.chomp)

    return raise "LOCKED" if @lock == true
    @pages.push(entry)
    "Entry added"

  end

  def read_diary

    @pages.each { |entry| puts entry }

  end

end
