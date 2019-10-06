class NoticesController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      flash[:success] = t('.query_has_been_sent_successfully')
    else
      flash[:error] = t('contact_us.notices.error')
    end
    redirect_to notices_path
  end

  private

  def notice_params
    params.require(:notice).permit(:notice_type, :content)
  end

end