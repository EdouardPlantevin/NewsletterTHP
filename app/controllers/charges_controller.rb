


class ChargesController < ApplicationController
  def new
  end

  def create
  # Amount in cents
      @amount = 500

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
       @emailling = params[:stripeEmail]

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Paiement de N',
        :currency    => 'eur'
      )

      SendMailMailer.contact("#{@emailling}").deliver_now
      puts "Message envoyer a #{@emailling}"

      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end

end
