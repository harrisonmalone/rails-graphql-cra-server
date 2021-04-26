module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :fetch_tasks, resolver: Queries::FetchTasks
    field :fetch_task, resolver: Queries::FetchTask
  end
end
