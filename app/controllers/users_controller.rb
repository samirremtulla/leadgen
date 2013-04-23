class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to root_path, :notice => "Signed up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    amount_deposited = params[:amount_deposited].to_i
    @user.balance += amount_deposited
    if @user.save
      redirect_to root_path, :notice => "Thank you for adding money to your account!"
    else
      render :edit
    end
  end

  def show
    @user_questions = User.find(params[:id]).questions.order('questions.created_at DESC').page(params[:page]).per(2) 
  end
end
