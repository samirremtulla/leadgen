class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
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

    if @question.save
      redirect_to questions_path
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
