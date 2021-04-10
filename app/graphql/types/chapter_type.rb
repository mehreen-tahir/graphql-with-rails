module Types
  class ChapterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :short_description, String, null: true

    field :author_name, String, null: true

    def author_name
      object.book.author.name
    end
  end
end
