class Security
  def initialize(name, bio, age, password)
    @user = User.new(name, bio, age, password)
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end

  def profile
  user.profile if authenticate(candidate_password) == true
  end

end

class User(name, bio, age, password)

  def initialize
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end

end
