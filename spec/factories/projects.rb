FactoryGirl.define do
  factory :project do
    content 'work'

    factory :project_with_tasks do
      transient do
        tasks_count 2
      end

      after(:create) do |project, evaluator|
        create_list(:task, evaluator.tasks_count, project: project)
      end
    end
  end
end
