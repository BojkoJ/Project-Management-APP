project = Project.create(
  nazev: "Project #{rand(1..50)}",
  description: "Pokusný popis projektu",
  created_at: Faker::Time.between(from: 1.month.ago, to: Time.zone.now)
)

10.times do
  project = Project.create(
    nazev: "Project #{rand(1..50)}",
    description: "Pokusný popis projektu",
    created_at: Faker::Time.between(from: 1.month.ago, to: Time.zone.now)
  )

  5.times do
    task = Task.create(
      subject: "Task #{rand(1..10)}",
      description: "Pokusný popis úkolu",
      status: Task.statuses.keys.sample,
      created_at: Faker::Time.between(from: project.created_at, to: Time.zone.now),
      project_id: project.id,
      user_id: User.pluck(:id).sample
    )
  end
end