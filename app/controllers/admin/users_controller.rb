class Admin::UsersController < ::AdminController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]

    if @user.save
      redirect_to admin_users_path, :notice => 'Data file was successfully created.'
    else
      render :action => "new"
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy

    redirect_to admin_users_url
  end
end
