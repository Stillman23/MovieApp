# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


current_showtimes = [ 
    Showtime.create(showtime: "11:00am"), 
    Showtime.create(showtime: "1:15pm"),
    Showtime.create(showtime: "3:15pm"),
    Showtime.create(showtime: "5:15pm"),
    Showtime.create(showtime: "7:15pm"),
    Showtime.create(showtime: "9:15pm"),
    Showtime.create(showtime: "11:15pm")
]  

Theatre.create(name: '101', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '102', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '103', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '104', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '105', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '106', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '107', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '108', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '109', seating: 45, showtimes: current_showtimes)
Theatre.create(name: '110', seating: 45, showtimes: current_showtimes)

Movie.create(title: 'Black Panther', rating: 'PG', length: 105, showtimes: current_showtimes )
Movie.create(title: 'Wrinkle In Time', rating: 'PG', length: 95, showtimes: current_showtimes)
Movie.create(title: 'Blockers', rating: 'R', length: 112, showtimes: current_showtimes)
Movie.create(title: 'Pacific Rim', rating: 'PG-13', length: 115, showtimes: current_showtimes)
Movie.create(title: 'Acrimony', rating: 'R', length: 105, showtimes: current_showtimes)
Movie.create(title: 'Quiet Place', rating: 'PG-13', length: 90, showtimes: current_showtimes)
Movie.create(title: 'Truth or Dare', rating: 'Un-Rated', length: 105, showtimes: current_showtimes)
Movie.create(title: 'Sherlock Gnomes', rating: 'PG', length: 80, showtimes: current_showtimes)
Movie.create(title: 'Peter Rabbit', rating: 'PG', length: 92, showtimes: current_showtimes)
Movie.create(title: 'The Miracle Season', rating: 'PG', length: 104, showtimes: current_showtimes)

Ticket.create(price: 10.00, showtime_id: current_showtimes[0], order_id: Order.create(customer_name:'Scott Tillman', customer_email: 'Scotttillman23@gmail.com'))

