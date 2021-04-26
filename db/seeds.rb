5.times do |n|
  Task.create(
    name: "task #{n + 1}",
    status: [true, false].sample
  )
end