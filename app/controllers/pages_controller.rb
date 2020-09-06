class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :pindex ]

  def home
  end
end
