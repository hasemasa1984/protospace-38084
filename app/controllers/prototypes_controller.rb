class PrototypesController < ApplicationController
  def new_password_path
    @user = all
  end
  
end
