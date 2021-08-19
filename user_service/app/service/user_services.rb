class UserServices

  def login(login_request_dto)

    user = User.find_by_email(login_request_dto[:email])
    if user.is_same_password?(login_request_dto[:password])
      return user
    end
    return nil
  end

  def join(join_request_dto)
    user = User.new
    user.email = join_request_dto[:email]
    user.password = join_request_dto[:password]
    user.save
  end

end