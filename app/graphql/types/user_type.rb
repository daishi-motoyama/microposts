module Types
  class UserType < Types::BaseObject
    field :id, Int, null: false
    field :uid, String, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :posts_loader, [Types::PostType]

    def posts_loader
      Loaders::AssociationLoader.for(User, :posts).load(object)
    end
  end
end