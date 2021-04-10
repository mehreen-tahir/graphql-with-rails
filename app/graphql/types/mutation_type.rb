module Types
  class MutationType < Types::BaseObject
    field :create_author, mutation: Mutations::CreateAuthor
    field :update_author, mutation: Mutations::UpdateAuthor
  end
end
