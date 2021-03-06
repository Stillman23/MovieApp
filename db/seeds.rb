# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




showtimes = [
    {showtime: DateTime.parse('3rd Feb 2001 11:00:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 12:00:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 13:15:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 15:00:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 17:15:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 20:00:06+03:30')},
    {showtime: DateTime.parse('3rd Feb 2001 22:00:06+03:30')}
  ]

theatres = [
    {name: '101', max_seating: 20},
    {name: '102', max_seating: 20},
    {name: '103', max_seating: 20},
    {name: '104', max_seating: 20},
    {name: '105', max_seating: 20},
    {name: '106', max_seating: 20},
    {name: '107', max_seating: 20},
    {name: '108', max_seating: 20},
    {name: '109', max_seating: 20},
    {name: '110', max_seating: 20}
]

movies = [
    {title: 'Black Panther', rating: 'PG', length: 105, movie_image: 'BlackPanther.jpg' },
    {title: 'Sherlock Gnomes', rating: 'G', length: 80, movie_image:'Sherlock.jpg' },
    {title: 'Blockers', rating: 'R', length: 112, movie_image:'Blockers.jpg' },
    {title: 'Pacific Rim', rating: 'PG-13', length: 115, movie_image:'WrinkleinTime.jpg' },
    {title: 'Wrinkle In Time', rating: 'PG', length: 95, movie_image: 'Pacific.jpg' },
    {title: 'Acrimony', rating: 'R', length: 105, movie_image:'Acrimony.jpg' },
    {title: 'Quiet Place', rating: 'PG-13', length: 90, movie_image:'quietplace.jpg' },
    {title: 'Truth or Dare', rating: 'Un-Rated', length: 105, movie_image:'Truth.jpg' },
    {title: 'Peter Rabbit', rating: 'PG', length: 92,  movie_image: 'Peter.jpg'},
    {title: 'The Miracle Season', rating: 'PG', length: 104, movie_image: 'Miracle.jpg'}
  ] 

  theatres.each {|theatre| Theatre.create(theatre)} 
  t = Theatre.all
  t.each do |theatre|
    movies.each do |movie|
        movie['theatre_id'] = theatre.id
        m = Movie.create(movie)
        showtimes.each do |showtime|
            showtime['movie_id'] = m.id 
            s = Showtime.create(showtime) 
            rand(1..20).times {Ticket.create(price: 10.00, showtime_id: s.id)}
        end
    end
end



    






# theatre1 = Theatre.create(name: 1, seats: 20)
# theatre2 = Theatre.create(name: 2, seats: 20)
# theatre3 = Theatre.create(name: 3, seats: 20)

# movie1 = Movie.create(title: This Title, length: 90)
# movie2 = Movie.create(title: Those Title, length: 90)
# movie3 = Movie.create(title: That Title, length: 90)

# Showtime.create(showtime: 11, theatre_id: theatre1, movie_id: movie1)
# Showtime.create(showtime: 1, theatre_id: theatre1, movie_id: movie1)
# Showtime.create(showtime: 3, theatre_id: theatre1, movie_id: movie1)

# Showtime.create(showtime: 11, theatre_id: theatre2, movie_id: movie2)
# Showtime.create(showtime: 1, theatre_id: theatre2, movie_id: movie2)
# Showtime.create(showtime: 3, theatre_id: theatre2, movie_id: movie2)

# Showtime.create(showtime: 11, theatre_id: theatre3, movie_id: movie3)
# Showtime.create(showtime: 1, theatre_id: theatre3, movie_id: movie3)
# Showtime.create(showtime: 3, theatre_id: theatre3, movie_id: movie3)


