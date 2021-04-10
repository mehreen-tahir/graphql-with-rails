module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true

    field :book_count, Integer, null: false

    def book_count
      object.books.count
    end
  end
end
