module Queries
  class FetchTask < BaseQuery
    type Types::TaskType, null: false
    argument :id, ID, required: true

    def resolve(id:) 
      Task.find(id)
    end
  end
end