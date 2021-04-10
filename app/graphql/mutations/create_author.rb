class Mutations::CreateAuthor < Mutations::BaseMutation
  description "Creates Author"

  argument :name, String, required: true
  argument :email, String, required: true

  field :author, Types::AuthorType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:)
      author = Author.new(name: name, email: email)
      if(author.save)
          {author: author, errors: []}
      else
          {author: [], errors: author.errors.full_messages}
      end
  end
end