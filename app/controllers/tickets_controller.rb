class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
    # @show = Show.find(params[:show_id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
  
    if @tickets.save
      @tickets.movie.increment!(:max_seating)
      TicketMailer.ticket_receipt(@ticket).deliver_now
      flash[:notice] = "Your ticket to #{@showtime.movie.title} was purchased.  Please look for an email with your receipt. "
      redirect_to root_path
    else
      @errors = @ticket.errors.full_messages
      reset_cc_and_age(@ticket)
      render 'tickets/new', locals: { ticket: @ticket }
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:customer_name:, :customer_email, :customer_email_confirmation, :credit_card, :credit_card_expiration_date) 
end
