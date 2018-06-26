class ImagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @imagepost = current_user.images.build(image_params)
    if @imagepost.save
      redirect_to current_user
    else
       flash[:error] = "画像が選択されていません。"
      redirect_to current_user
    end
  end

  private

    def piturepost_params
      params.require(:imagepost).permit(:image)
    end
  end
