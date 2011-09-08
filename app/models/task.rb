class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :zone

  scope :inbox, where("tasks.project_id IS NULL OR tasks.zone_id IS NULL")
  default_scope order("done, due_date ASC")
end
