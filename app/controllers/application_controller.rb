class ApplicationController < ActionController::Base
  def create
    user = User.new(params.require(:user).permit(:name, :email))
    user.save!
    render json: user
  end
end
