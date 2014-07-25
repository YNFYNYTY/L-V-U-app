class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

     @user = User.new(user_params)

    if @user.save
      redirect_to action: 'index', controller: 'users'
    else
      render 'new'

    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy


    if @user.destroy
      redirect_to action: 'index', controller: 'users'
    else
      render 'new'
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to action: 'index', controller: 'users'
    else
      render 'edit'
    end
  end



   private

  def user_params
    params.require(:user).permit(:name, :location_id, :visit_id, :premium)
  end
end
