class User < ActiveRecord::Base

  def is_same_password?(password)
    self.password == password
  end

end