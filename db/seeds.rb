# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
    email: 'test@test.com',
    password: 'Totototo',
    password_confirmation: 'Totototo',
    name: 'Admin User',
    role: 'site_admin'
)

puts "1 Admin user created"

User.create!(
    email: 'test2@test.com',
    password: 'Totototo',
    password_confirmation: 'Totototo',
    name: 'Regular User'
)

puts "1 regular user created"

2.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end

Topic.create!(
         title: "WRC"
)

10.times do |blog_variable|
  Blog.create!(
          title: "Mon blog seed #{blog_variable}",
          body: "Blog Content in seeds file. Bla Bla Bla",
          topic_id: Topic.last.id
  )
end

puts "10 blogs created dans mon seeds file"


5.times do |skill|
  Skill.create!(
           title: "Rails #{skill}",
           percent_utilized: 15
  )
end

puts "5 skills created"


8.times do |portfolio_item|
  Portfolio.create!(
               title: "Portfolio title: #{portfolio_item}",
               subtitle: "My subtitle",
               body: "Portfolio generated in my seeds file",
               main_image: "http://placehold.it/600x400",
               thumb_image: "http://placehold.it/350x200"
  )
end

Portfolio.create!(
    title: "Dernier Portfolio WRC",
    subtitle: "My subtitle :)",
    body: "Portfolio generated in my seeds file as well",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
)

puts "9 portfolio created"

#3.times do |technology|
  #Portfolio.last.technologies.create!(
    #name: "Technology #{technology}"
  #)
  #same as
  #Technology.create!(
  # name: "Technology #{technology}",
  #portfolio_id: Portfolio.last.id
 # )
#end

#puts "3 technology created"