class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end

  def create
    @payment = current_user.payments.build(:question_id => params[:question_id])
    @payment.payment = true

    if @payment.save
      redirect_to questions_path
    else
      redirect_to questions_path
    end
  end
end
