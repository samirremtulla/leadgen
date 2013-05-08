class ChargesController < ApplicationController
def new
end


def create
  @user = current_user
  @user.balance += 10



  # Amount in cents
  @amount = 1000

  customer = Stripe::Customer.create(
    :email => current_user.email,
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'cad'
  )
  if @user.save
    redirect_to questions_path, :notice => "Thank you for adding money to your account!"
  else
    render :edit
  end

  rescue Stripe::CardError => e
    flash[:notice] = e.message
    redirect_to questions_path, :notice => "Error processing payment"
  end
end
