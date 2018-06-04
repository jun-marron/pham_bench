class MicropostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to root_url
    else
      render 'static_pages/home'
  end

  def destroy
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
