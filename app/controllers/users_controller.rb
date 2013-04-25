class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to questions_path, :notice => "Signed up!"
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
      redirect_to questions_path, :notice => "Thank you for adding money to your account!"
    else
      render :edit
    end
  end

  def show
    @user_questions = User.find(params[:id]).questions.order('questions.created_at DESC').page(params[:page]).per(2) 
  end

  def send_message
    # require 'twilio-ruby'
    # accountsid = ENV["TWILIO_ACCOUNTS_ID"]
    # authtoken = ENV["TWILIO_AUTH_TOKEN"]

    # #Text Messaging
    # client = Twilio::REST::Client.new(accountsid, authtoken)

    # client.account.sms.messages.create(
    #   :from => '+12898125092',
    #   :to => '+15196575606',
    #   :body => 'Test'
    # )

    # Phone Call
    # @client = Twilio::REST::Client.new(accountsid, authtoken)

    # @account = @client.account
    # @call = @account.calls.create({:from => '+12898125092', :to => '4168854959', :url =>"https://demo.twilio.com/welcome/voice/"})
    # puts @call
  end

end
