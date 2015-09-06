class PagesController < ApplicationController

  def index
  end

  def contact
    PersonalMailer.contact(params[:contact_info]).deliver
    redirect_to root_path
  end

end
