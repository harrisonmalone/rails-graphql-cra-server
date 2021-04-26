module Mutations
  class AddTask < BaseMutation
    argument :name, String, required: true
    argument :status, Boolean, required: true

    field :task, Types::TaskType, null: false

    def resolve(name: nil, status: nil) 
      task = Task.new(name: name, status: status) 
      if task.save
        { task: task }
      else
        GraphQL::ExecutionError.new(message: task.errors.full_messages)
      end
    end
  end
end