module Mutations
  class DeleteTask < BaseMutation
    field :task, Types::TaskType, null: false

    argument :id, ID, required: true

    def resolve(params)
      task = Task.find(params[:id])
      if task.destroy
        { task: task }
      end
    end
  end
end
