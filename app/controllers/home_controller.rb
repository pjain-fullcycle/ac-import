class HomeController < ApplicationController
  def index; end

  def create
    ImportJob.perform_later(params[:import_id], params[:data].path)
  end
end
