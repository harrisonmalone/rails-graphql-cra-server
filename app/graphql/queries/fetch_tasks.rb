module Queries
  class FetchTasks < BaseQuery
    type [Types::TaskType], null: false

    def resolve
      Task.all.order(created_at: :desc)
    end
  end
end