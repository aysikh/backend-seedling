class UsersController < ApplicationController

  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['User not found.']
      }
    end
  end

  def show 
    @user = User.find(params[:id])
    if @user
       render json: {
         user: @user
       }
     else
       render json: {
         status: 500,
         errors: ['User not found.']
       }
     end
  end

  def create
    @user = User.new(
      name: params[:name], 
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      params[:goals].each do |k, v|
        goal = Goal.find_by(name: k)
        UserGoal.create(
          goal: goal,
          user: @user
        )
      end
      login!
      render json: {
        status: :created,
        user: @user,
        goals: @user.goals
      }
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end


  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {
        errors: false,
        info: @user
      }
    else
      render json: {
        errors: true,
        info: "Woops! Wrong email and/or password! Please try again :)"
      }
    end

  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :goal_id)
  end

end
