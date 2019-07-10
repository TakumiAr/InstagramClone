class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = '会員登録が完了しました！'
      redirect_to new_session_path
    else
      render'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    if @user.email == current_user.email
      else
        redirect_to pictures_path, notice: "他のユーザーのプロフィールは編集できません！"
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user.id), notice: "プロフィール画像を編集しました！"
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :icon)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
