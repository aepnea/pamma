class PostulationGrantController < ApplicationController
  def index
    @postulations = Postulation.all
  end
end
