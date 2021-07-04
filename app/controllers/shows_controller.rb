class ShowsController < ApplicationController
  before_action :set_show, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
  end

  def show; end

  private

  def set_show
    @show = Show.find(params[:id])
  end
end
