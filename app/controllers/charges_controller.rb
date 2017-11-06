class ChargesController < ApplicationController

before_action :authenticate_user!

 def new
  
  @amount = 15_00
  
   @stripe_btn_data = {
     key: "#{ Rails.configuration.stripe[:publishable_key] }",
     description: "Premium Membership - #{current_user.email}",
     amount: @amount
   }
 end


 def create
   # Creates a Stripe Customer object, for associating
   # with the charge
   
   @amount = 15_00
   customer = Stripe::Customer.create(
     email: current_user.email,
     card: params[:stripeToken]
   )
 
   # Where the real magic happens
   charge = Stripe::Charge.create(
     customer: customer.id, # Note -- this is NOT the user_id in your app
     amount: @amount,
     description: "Premium Membership - #{current_user.email}",
     currency: 'usd'
   )
 
   flash[:notice] = "Thank you, #{current_user.email}! You now have a premium membership."
   current_user.premium!
   redirect_to welcome_index_path
 
   # Stripe will send back CardErrors, with friendly messages
   # when something goes wrong.
   # This `rescue block` catches and displays those errors.
   rescue Stripe::CardError => e
     flash[:alert] = e.message
     redirect_to new_charge_path
 end
 
end
