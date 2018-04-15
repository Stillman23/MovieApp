class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
   
  end

  def create
    @ticket = Ticket.new
    
    binding.pry
    
  
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
end
