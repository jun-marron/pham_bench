class MicropostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
