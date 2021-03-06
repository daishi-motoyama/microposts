module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :users, resolver: Resolvers::UsersResolver
    field :user, resolver: Resolvers::UserResolver
    field :posts, resolver: Resolvers::PostsResolver
    field :post, resolver: Resolvers::PostResolver
    field :posts_sort, resolver: Resolvers::PostsSortResolver
    field :comment, resolver: Resolvers::CommentResolver
    field :comments, resolver: Resolvers::CommentsResolver
  end
end
