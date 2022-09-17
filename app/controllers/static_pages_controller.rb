class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_pages]

  def landing_pages
  end

  def dashboard
  end
end
