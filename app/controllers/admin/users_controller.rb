class Admin::UsersController < Admin::AdminController
  def index
    @users = User.all
    @user = User.new
  end
end
