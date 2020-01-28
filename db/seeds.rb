User.destroy_all




u1 = User.create(email: "David@avvitt.com", password: "Password", password_confirmation: "Password", first_name: 'David', last_name: 'Caldwell')
u2 = User.create(email: "Michael@gmail.com", password: "Password", password_confirmation: "Password", first_name: 'Michael', last_name: 'Caldwell')
u3 = User.create(email: "Jess@gmail.com", password: "Password", password_confirmation: "Password", first_name: 'Jess', last_name: 'Caldwell')
u4 = User.create(email: "Bev@gmail.com", password: "Password", password_confirmation: "Password", first_name: 'Bev', last_name: 'Caldwell')