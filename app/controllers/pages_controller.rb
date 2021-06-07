class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :coming_soon ]

  def home
  end

  def coming_soon
  end
end
