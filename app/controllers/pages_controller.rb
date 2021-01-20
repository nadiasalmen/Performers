class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :us, :home2 ]

  def home
  end

  def us
  end
end
