class UsersController < ApplicationController
  def show
    begin
      @user = User.find(params[:id])
      @micropost = current_user.microposts.build
      @microposts = @user.microposts.paginate(page: params[:page])
    # rescue => e
    #   flash[:notice] = "エラーが発生しました。"
    #   redirect_to root_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
