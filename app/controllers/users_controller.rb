class UsersController < ApplicationController
  #this line utilizes  -ApplicationController's filter before action-  with  -Devise's helper authenticate_user!-
  before_action :authenticate_user!

  def show
    @user = User.find_by(id: params[:id])
  end
end
