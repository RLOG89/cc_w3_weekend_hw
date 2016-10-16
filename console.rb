require_relative 'models/customer'
require_relative 'models/film'
require_relative 'models/ticket'
require_relative 'models/snack'
require 'pry-byebug'

Ticket.delete_all
Snack.delete_all
Film.delete_all
Customer.delete_all

customer1 = Customer.new( { 'name' => "Hank Moody", 'funds' => 1000.00 } )
customer1.save
customer2 = Customer.new( { 'name' => "Bob Hoskins", 'funds' => 100.00 } )
customer2.save
customer3 = Customer.new( { 'name' => "Paul Gascoigne", 'funds' => 10.00 } )
customer3.save
customer4 = Customer.new( { 'name' => "Tom Hall", 'funds' => 200.00 } )
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

snack1 = Snack.new( { 'item' => "Small Popcorn", 'price' => 3.50 } )
snack1.save
snack2 = Snack.new( { 'item' => "Large Popcorn", 'price' => 6.50 } )
snack2.save
snack3 = Snack.new( { 'item' => "Small Hotdog", 'price' => 4.00 } )
snack3.save
snack4 = Snack.new( { 'item' => "Large Hotdog", 'price' => 6.50 } )
snack4.save
snack5 = Snack.new( { 'item' => "Small Soda", 'price' => 3.00 } )
snack5.save
snack6 = Snack.new( { 'item' => "Large Soda", 'price' => 4.00 } )
snack6.save
snack7 = Snack.new( { 'item' => "Small Coffee", 'price' => 2.50 } )
snack7.save
snack8 = Snack.new( { 'item' => "Large Coffee", 'price' => 3.50 } )
snack8.save
snack9 = Snack.new( { 'item' => "Pick ''n Mix", 'price' => 10.00 } )
snack9.save
snack10 = Snack.new( { 'item' => "Ice-Cream", 'price' => 5.50 } )
snack10.save

# ticket1 = Ticket.new( {'customer_id' => 1, 'film_id' => 2 } )
# ticket1.save
# ticket2 = Ticket.new( {'customer_id' => 2, 'film_id' => 3 } )
# ticket2.save
# ticket3 = Ticket.new( {'customer_id' => 3, 'film_id' => 2 } )
# ticket3.save
# ticket4 = Ticket.new( {'customer_id' => 1, 'film_id' => 4 } )
# ticket4.save
# ticket5 = Ticket.new( {'customer_id' => 4, 'film_id' => 5 } )
# ticket5.save
# ticket6 = Ticket.new( {'customer_id' => 5, 'film_id' => 5 } )
# ticket6.save
# ticket7 = Ticket.new( {'customer_id' => 1, 'film_id' => 3 } )
# ticket7.save
# ticket8 = Ticket.new( {'customer_id' => 2, 'film_id' => 2 } )
# ticket8.save
# ticket9 = Ticket.new( {'customer_id' => 3, 'film_id' => 5 } )
# ticket9.save
# ticket10 = Ticket.new( {'customer_id' => 1, 'film_id' => 4 } )
# ticket10.save
# ticket11 = Ticket.new( {'customer_id' => 4, 'film_id' => 4 } )
# ticket11.save
# ticket12 = Ticket.new( {'customer_id' => 5, 'film_id' => 3 } )
# ticket12.save
# ticket13 = Ticket.new( {'customer_id' => 2, 'film_id' => 5 } )
# ticket13.save
# ticket14 = Ticket.new( {'customer_id' => 5, 'film_id' => 3 } )
# ticket14.save
# ticket15 = Ticket.new( {'customer_id' => 3, 'film_id' => 2 } )
# ticket15.save
# ticket16 = Ticket.new( {'customer_id' => 1, 'film_id' => 1 } )
# ticket16.save
# ticket17 = Ticket.new( {'customer_id' => 2, 'film_id' => 1 } )
# ticket17.save
# ticket18 = Ticket.new( {'customer_id' => 3, 'film_id' => 1 } )
# ticket18.save
# ticket19 = Ticket.new( {'customer_id' => 4, 'film_id' => 1 } )
# ticket19.save
# ticket20 = Ticket.new( {'customer_id' => 5, 'film_id' => 1 } )
# ticket20.save

customer1.buy_ticket(film1)
customer1.buy_ticket(film2)
customer1.buy_ticket(film3)
customer1.buy_ticket(film4)
customer1.buy_ticket(film5)
customer3.buy_ticket(film2)
customer2.buy_ticket(film2)
customer2.buy_ticket(film3)
customer4.buy_ticket(film3)
customer2.buy_ticket(film3)
customer2.buy_ticket(film3)
customer2.buy_ticket(film3)
customer1.buy_snack(snack2)
customer1.buy_snack(snack4)
customer1.buy_snack(snack6)
customer1.ticket_count

binding.pry
nil
