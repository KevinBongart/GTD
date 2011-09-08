class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.integer :project_id
      t.integer :area_id
      t.boolean :done, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
