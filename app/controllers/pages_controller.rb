class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :us ]

  def home
  end

  def us
  end
end
