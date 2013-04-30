class QuestionsController < ApplicationController
  
  skip_before_filter :require_login, :only => [:new, :create]

  def index
    if params[:tag]
      @questions = Question.tagged_with(params[:tag]).page(params[:page]).per(2)
    else
      @questions = Question.order('questions.created_at DESC').page(params[:page]).per(2)
    end
  end

  def show
    @question = Question.find(params[:id])
  end
  
  def new
    @question = Question.new
  end
 
  def create
    @question = Question.new (params[:question])
    @question.response = 0 #patch fix later
    @question.city = request.location.city
    data = @question.description
    # Pusher['site-activity'].trigger('action', data)
    # Pusher['test_channel'].trigger('action', data)
    # raise "Creating an event!"

    if @question.save
      redirect_to root_path, :notice => "Thank you for asking a question! Someone will get back to you shortly!"
    else
      render :new
    end
  end

  def destroy
  end
  
  def edit
  end
  
  def update
  end
end
