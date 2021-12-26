class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def show
  end

  def index
  end
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_path(@user), notice: "ユーザ「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end
end
