class DashboardController < ApplicationController

  def index

    @active_cohorts = (1..3).to_a

  end
end
