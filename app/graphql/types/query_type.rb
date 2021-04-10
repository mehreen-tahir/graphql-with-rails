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
  end
end
