class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :find_projects
  before_filter :find_zones

private

  def find_projects
    @projects = Project.all
  end

  def find_zones
    @zones = Zone.all
  end
end
