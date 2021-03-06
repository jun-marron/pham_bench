class MicropostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to current_user
    else
       flash[:error] = "文字が入力されていません。"
      redirect_to current_user
    end
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
