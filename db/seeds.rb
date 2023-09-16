# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(email: "yan@a.com", name: "yan", password: 'password', password_confirmation: 'password')
# User.create(email: "zhang@a.com", name: "zhang", password: 'password', password_confirmation: 'password')

User.create(email: 'yan@a.com',
    password: '111111',
    password_confirmation: '111111',
    name: 'yan',
    role: User.roles[:admin]
)
User.create(email: 'zhang@a.com',
    password: '111111',
    password_confirmation: '111111',
    name: 'zhang'
)
  
10.times do |x|
    post = Post.create(title: "title #{x}", 
        body: "body #{x} words go here Idk", 
        user_id: User.first.id 
    )
    5.times do |y|
        Comment.create(body: "Comment #{y}",
            user_id: User.second.id,
            post_id: post.id
        )

    end
end