# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog_variable|
  Blog.create!(
          title: "Mon blog seed #{blog_variable}",
          body: "Content in seeds file"
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


9.times do |portfolio_item|
  Portfolio.create!(
               title: "Portfolio title: #{portfolio_item}",
               subtitle: "My subtitle",
               body: "Portfolio generated in my seeds file",
               main_image: "http://placehold.it/600x400",
               thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio created"