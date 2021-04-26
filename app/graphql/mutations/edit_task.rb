module Mutations
  class EditTask < BaseMutation
    field :task, Types::TaskType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :status, Boolean, required: true

    def resolve(task_params)
      task = Task.find(task_params[:id])
      if task.update(task_params)
        { task: task }
      end
    end
  end
end
