class OrdersController < ApplicationController
  def new
    # binding.pry
    @movie = Movie.find_by(id: params[:movie])   
    @order = Order.new
    @showtimes = @movie.showtimes
    @order.tickets.build
  end

  def create
    @order = Order.new(order_params)
    # binding.pry
    if @order.save
      flash[:success] = 'Ticket has been Purchased! Confirmation Email has been sent.'
      redirect_to root_path
    else 
      flash[:error] = 'Information Error! Please try again.'
      render 'new'
    end
  end


  def order_params
    params.require(:order).
      permit(:customer_name, :customer_email, tickets_attributes: [:id, :price, :order_id, :showtime])
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
