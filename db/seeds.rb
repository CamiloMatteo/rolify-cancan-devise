# frozen_string_literal: true

Role.create(name: :admin)
Role.create(name: :client)

user1 = User.create(
  username: 'Nicole',
  email: 'admin@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)
user1.add_role(:admin)

user2 = User.create(
  username: 'Pepe',
  email: 'client@gmail.com',
  password: 'password1234',
  password_confirmation: 'password1234'
)
user2.add_role(:client)

1.upto(5) do |i|
  Product.create(
    name: "monitor #{i}",
    price: 600 * i,
    user: user1
  )
end

1.upto(5) do |i|
  Product.create(
    name: "keyboard #{i}",
    price: 200 * 1,
    user: user2
  )
end
