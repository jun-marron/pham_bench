class UsersController < ApplicationController
  def show
    begin
      @user = User.find(params[:id])
    rescue => e
      flash[:notice] = "エラーが発生しました。"
      redirect_to root_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
