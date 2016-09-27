
class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    if ((current_user.sign_in_count > 1)&&(current_user.role == "client"))
    	redirect_to sitters_path
     elsif ((current_user.sign_in_count > 1)&&(current_user.role == "sitter"))
      redirect_to sitter_path(current_user.sitter)
    else
     current_user.sign_in_count == 1
			has_completed_profile	
		end
  end

  def has_completed_profile
    if @user.role == "sitter"
        redirect_to new_sitter_path
    else @user.role == "client"
        redirect_to new_client_path
    end
    send_mail
  end

  def send_mail
    UserMailer.welcome(current_user).deliver_now
  end
end