class Lock

  attr_reader :locked

  def initialize

    @locked = true

  end

  def open_lock

    @locked = false

  end

  def close_lock

    @locked = true

  end


end
