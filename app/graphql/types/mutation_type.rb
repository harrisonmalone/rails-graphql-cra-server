module Types
  class MutationType < Types::BaseObject
    field :delete_task, mutation: Mutations::DeleteTask
    field :edit_task, mutation: Mutations::EditTask
    field :add_task, mutation: Mutations::AddTask
  end
end
