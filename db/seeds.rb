# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Resident.delete_all
Property.delete_all
User.delete_all


U = 10
A = 7
R = 5

user = Array.new(U)
U.times do |u|
  user[u] = User.create(
    email: "u#{u}@u.com",
    admin: u<2,
      password: "123456",
      password_confirmation: "123456" 
  )

  property = Array.new(A)
  A.times do |a|
    property[a] = Property.create(
      user: user[u],
      identifier: u.to_s + '-' +a.to_s
    )

    resident = Array.new(R)
    R.times do |r|
      resident[r] = Resident.create(
        property: property[a],
        
        
        
      )
      puts "Resident #{r}: #{resident[r]} created!"
    end
  end
end