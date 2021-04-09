2.times do

    author = Author.create(name: Faker::Name.name, email: Faker::Internet.email)
 
 
    3.times do
 
      book = author.books.create(name: Faker::Lorem.sentence(word_count:2), description: Faker::Lorem.paragraph(sentence_count:2))
 
 
     2.times do
 
        book.chapters.create(name: Faker::Lorem.sentence(word_count: 2), short_description: Faker::Lorem.paragraph(sentence_count: 2))
 
     end
 
 
   end
 
 end