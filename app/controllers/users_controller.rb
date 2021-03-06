class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "プロフィールを変更しました"
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :self_introduction, :image, :alc_category_id)
  end

end
