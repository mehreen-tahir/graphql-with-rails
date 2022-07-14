class Mutations::UpdateAuthor < Mutations::BaseMutation
  description "Updates Author"

  argument :name, String, required: true
  argument :email, String, required: true
  argument :id, ID, required: true

  field :author, Types::AuthorType, null: false
  field :errors, [String], null: false

  def resolve(name:, id:, email:)
    author = Author.find(id)
    author.update(name: name, email: email)

    if(author.errors.blank?)
      {author: author, errors: []}
    else
      {author: [], errors: author.errors.full_messages}
    end
  end

end