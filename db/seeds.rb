puts 'creating seed.'

5.times do |i|
    product = Product.create(
        name: Faker::Company.name,
        tagline: Faker::Company.catch_phrase
    )

    puts "Created product! Number: #{i+1}, name: #{product.name}"
end

User.create!(email: 'richard@email.com', first_name: 'richard', last_name: 'jarram', password: '123456')