class ValidatePassword
  attr_reader :password
  
  def initialize(password)
    @password = password
  end
 
  def perform
    password.length.between?(6, 24) &&
      password.match?(/[A-Z]/) &&
      password.match?(/[a-z]/) &&
      password.match?(/[0-9]/) &&
      password.match?(/[!@#$%^&*()_+]/) &&
      !password.match?(/(.)\1{2}/)
  end
end
