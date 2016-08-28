class CreateTasksAndTags < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :done, default: false
      t.timestamps null: false
    end

    create_table :tags do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :tags_tasks, id: false do |t|
      t.belongs_to :task, index: true
      t.belongs_to :tag, index: true
    end

  end
end
