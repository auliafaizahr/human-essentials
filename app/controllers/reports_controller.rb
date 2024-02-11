class ReportsController < ApplicationController
  def donations_summary
    setup_date_range_picker

    @donations = current_organization.donations.during(helpers.selected_range)
    @recent_donations = @donations.recent
  end
end
