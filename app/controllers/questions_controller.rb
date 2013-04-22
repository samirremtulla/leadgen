class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end

  def show

  end
  
  def new
    @question = Question.new
  end
 
  def create
    @question = Question.new (params[:question])

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
