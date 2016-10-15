require_relative 'models/customer'
require_relative 'models/film'
require_relative 'models/ticket'
require 'pry-byebug'

ticket.delete_all
film.delete_all
customer.delete_all

customer1 = Customer.new( { 'name' => "Hank Moody", 'funds' => 5000.00 } )
customer1.save
customer2 = Customer.new( { 'name' => "Bob Hoskins", 'funds' => 100.00 } )
customer2.save
customer3 = Customer.new( { 'name' => "Paul Gascoigne", 'funds' => 10.00 } )
customer3.save
customer4 = Customer.new( { 'name' => "Tom Hall", 'funds' => 500.00 } )
customer4.save
customer5 = Customer.new( { 'name' => "Barry Gregory", 'funds' => 25.00 } )
customer5.save

film1 = Film.new( { 'title' => "Gone in 60 Seconds", 'price' => 10.00 } )
film1.save
film2 = Film.new( { 'title' => "Avatar 3D", 'price' => 15.00 } )
film2.save
film3 = Film.new( { 'title' => "Django", 'price' => 10.00 } )
film3.save
film4 = Film.new( { 'title' => "Scream", 'price' => 6.50 } )
film4.save
film5 = Film.new( { 'title' => "Gone with the Wind", 'price' => 8.00 } )
film5.save

ticket1 = Ticket.new( {'customer_id' => 1, 'film_id' => 2 } )
ticket1.save
ticket2 = Ticket.new( {'customer_id' => 2, 'film_id' => 3 } )
ticket2.save
ticket3 = Ticket.new( {'customer_id' => 3, 'film_id' => 2 } )
ticket3.save
ticket4 = Ticket.new( {'customer_id' => 1, 'film_id' => 4 } )
ticket4.save
ticket5 = Ticket.new( {'customer_id' => 4, 'film_id' => 5 } )
ticket5.save
ticket6 = Ticket.new( {'customer_id' => 5, 'film_id' => 5 } )
ticket6.save
ticket7 = Ticket.new( {'customer_id' => 1, 'film_id' => 3 } )
ticket7.save
ticket8 = Ticket.new( {'customer_id' => 2, 'film_id' => 2 } )
ticket8.save
ticket9 = Ticket.new( {'customer_id' => 3, 'film_id' => 5 } )
ticket9.save
ticket10 = Ticket.new( {'customer_id' => 1, 'film_id' => 4 } )
ticket10.save
ticket11 = Ticket.new( {'customer_id' => 4, 'film_id' => 4 } )
ticket11.save
ticket12 = Ticket.new( {'customer_id' => 5, 'film_id' => 3 } )
ticket12.save
ticket13 = Ticket.new( {'customer_id' => 2, 'film_id' => 5 } )
ticket13.save
ticket14 = Ticket.new( {'customer_id' => 5, 'film_id' => 3 } )
ticket14.save
ticket15 = Ticket.new( {'customer_id' => 3, 'film_id' => 2 } )
ticket15.save
ticket16 = Ticket.new( {'customer_id' => 1, 'film_id' => 1 } )
ticket16.save
ticket17 = Ticket.new( {'customer_id' => 2, 'film_id' => 1 } )
ticket17.save
ticket18 = Ticket.new( {'customer_id' => 3, 'film_id' => 1 } )
ticket18.save
ticket19 = Ticket.new( {'customer_id' => 4, 'film_id' => 1 } )
ticket19.save
ticket20 = Ticket.new( {'customer_id' => 5, 'film_id' => 1 } )
ticket20.save



binding.pry
nil
