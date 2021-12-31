# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   contents = Content.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', content: contents.first)
Review.delete_all
Content.delete_all

user1 = "user1"
user2 = "xXuser2Xx"
user3 = "us3r3"
user4 = "u$er4"

content1 = Content.create(title: "Star Wars: Episode V - The Empire Strikes Back", type: "movie", year: 1980, details: "In this sequel to Star Wars, Luke and the rebels continue their adventure across the galaxy.")
content2 = Content.create(title: "Interstellar", type: "movie", year: 2014, details: "Matthew McConaughey plays a former NASA pilot who is recruited to venture across space and time to save a dying Earth.")
content3 = Content.create(title: "The Thing", type: "movie", year: 1982, details: "At a research base in Antartica, a team of scientists discover something in the ice that never should have been freed..")
content4 = Content.create(title: "Alien", type: "movie", year: 1979, details: "In space, no one can hear you scream. The crew of the Nostromo soon discover this as they cross paths with the deadliest organism in the universe.")

review1 = Review.create(username: user1, content_id: content1.id, rating: 5, description: "This is a very long-winded way to tell a person that the content of this review is fake and just for testing purposes.")
review11 = Review.create(username: user1, content_id: content2.id, rating: 5, description: "This is a very long-winded way to tell a person that the content of this review is fake and just for testing purposes.")

review2 = Review.create(username: user2, content_id: content1.id, rating: 4, description: "This is a short fake review.")
review22 = Review.create(username: user2, content_id: content2.id, rating: 3, description: "This is another short fake review.")

review3 = Review.create(username: user3, content_id: content3.id, rating: 5, description: "This is a very long-winded way to tell a person that the content of this review is fake and just for testing purposes.")
review33 = Review.create(username: user3, content_id: content4.id, rating: 5, description: "A short and sweet content review.")

review4 = Review.create(username: user4, content_id: content3.id, rating: 4, description: "This is a short content review.")
review44 = Review.create(username: user4, content_id: content4.id, rating: 3, description: "This is a very long-winded way to tell a person that the content of this review is fake and just for testing purposes.")


