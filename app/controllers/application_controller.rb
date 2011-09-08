class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :find_projects
  before_filter :find_zones
  before_filter :inbox_count

private

  def find_projects
    @projects = Project.all
  end

  def find_zones
    @zones = Zone.all
  end

  def inbox_count
    @inbox_count = Task.inbox.count
  end
end
