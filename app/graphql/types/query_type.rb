module Types
  class QueryType < Types::BaseObject

    # /authors
    field :authors, [Types::AuthorType], null: true

    def authors
      Author.all
    end

  end
end
