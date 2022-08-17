module Types
  class QueryType < Types::BaseObject

    # /authors
    field :authors, [Types::AuthorType], null: true

    def authors
      Author.all
    end

    # /author/:id
    field :author, Types::AuthorType, null: false do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end

    # /books
    field :books, [Types::BookType], null: true

    def books
      Book.all
    end

    # /book/:id
    field :book, Types::BookType, null: false do
      argument :id, ID, required: true
    end

    def book(id:)
      Book.find(id)
    end
  end
end
