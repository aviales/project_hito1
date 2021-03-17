# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

86.times do
    tweet = Tweet.create(content: Faker::TvShows::BigBangTheory.quote, 
                user_id: [9, 10, 11].sample)
        puts "Se ha creado un tweet"                
end  