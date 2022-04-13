def index
    UserMailer.example(User.new).deliver
    @users = User.all
  end