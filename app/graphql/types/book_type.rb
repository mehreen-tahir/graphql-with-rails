module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true

    field :chapters, [Types::ChapterType], null: true
  end
end
