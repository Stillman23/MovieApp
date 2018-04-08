# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


times = [
    '11:00am',
    '12:00pm',
    '1:15pm',
    '3:00pm',
    '5:15pm',
    '8:00pm',
    '10:00pm'
  ]

theatres = [
    {name: '101', seating: 45},
    {name: '102', seating: 45},
    {name: '103', seating: 45},
    {name: '104', seating: 45},
    {name: '105', seating: 45},
    {name: '106', seating: 45},
    {name: '107', seating: 45},
    {name: '108', seating: 45},
    {name: '109', seating: 45},
    {name: '110', seating: 45}
]

movies = [
    {title: 'Black Panther', rating: 'PG', length: 105},
    {title: 'Sherlock Gnomes', rating: 'G', length: 80},
    {title: 'Blockers', rating: 'R', length: 112},
    {title: 'Pacific Rim', rating: 'PG-13', length: 115},
    {title: 'Wrinkle In Time', rating: 'PG', length: 95},
    {title: 'Acrimony', rating: 'R', length: 105},
    {title: 'Quiet Place', rating: 'PG-13', length: 90},
    {title: 'Truth or Dare', rating: 'Un-Rated', length: 105},
    {title: 'Peter Rabbit', rating: 'PG', length: 92},
    {title: 'The Miracle Season', rating: 'PG', length: 104}
  ]
Ticket.create(price: 10.00, showtime_id: times[0], order_id: Order.create(customer_name:'Scott Tillman', customer_email: 'Scotttillman23@gmail.com'))
  
# times.each do |t|
#     theatres.each do |theatre|
#       movies.each do |movie|
#         Theatre.create(theatre)
#         Movie.create(movie)
#         Showtime.create(showtime: t, theatre: theatre, movie: movie)

#     end
# end

