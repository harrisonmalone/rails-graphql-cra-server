module Mutations
  class AddTask < BaseMutation
    argument :name, String, required: true
    argument :status, Boolean, required: true

    field :task, Types::TaskType, null: false

    def resolve(task_params) 
      task = Task.new(task_params)
      if task.save 
        { task: task }
      end
    end
  end
end