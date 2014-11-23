class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_sidebar_tags

  private

  def set_sidebar_tags
    @sidebar_tags = Tag.all
  end
end
