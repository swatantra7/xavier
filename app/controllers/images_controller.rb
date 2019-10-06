class ImagesController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = t('.query_has_been_sent_successfully')
    else
      flash[:error] = t('contact_us.notices.error')
    end
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit!
  end

end