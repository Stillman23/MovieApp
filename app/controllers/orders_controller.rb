class OrdersController < ApplicationController
  def new
    @order = Order.new
    # @movie = Movie.find(params[:movie_id])
   
  end

  def create
    @order = Order.new
    
  end

  def order_params
    params.require(:order).
      permit(:name, tickets_attributes: [:id, :price, :showtime_id, :order_id])
  end
    
  
    # if @tickets.save
    #   @tickets.movie.increment!(:max_seating)
    #   TicketMailer.ticket_receipt(@ticket).deliver_now
    #   flash[:notice] = "Your ticket to #{@showtime.movie.title} was purchased.  Please look for an email with your receipt. "
    #   redirect_to root_path
    # else
    #   @errors = @ticket.errors.full_messages
    #   reset_cc_and_age(@ticket)
    #   render 'tickets/new', locals: { ticket: @ticket }
  # end

end
