class HomeController < ApplicationController
  def index
  end

  def messages
  end

  def list
  end

  def become_specialist
  	current_user.update_attributes(:pending_specialist=>true)
  	redirect_to edit_user_registration_path 
  end
end
