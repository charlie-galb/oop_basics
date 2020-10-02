require 'diary_lock'

class SecretDiary


  def initialize

    @pages = []
    @lock = Lock.new

  end

  def lock_diary
    @lock.close_lock
  end

  def unlock_diary
    @lock.open_lock
  end

  def add_entry (entry = gets.chomp)

    return raise "LOCKED" if @lock.locked == true
    @pages.push(entry)
    "Entry added"

  end

  def read_diary

    return raise "LOCKED" if @lock.locked == true
    @pages.each { |entry| puts entry }

  end

end
