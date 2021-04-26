module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :status, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :name, String, null: true
    field :status, Boolean, null: true
  end
end
