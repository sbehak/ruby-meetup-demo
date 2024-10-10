class LandingPagesController < ApplicationController
  def index
    @destinations = Destination.all
    @agency = RequestStore.store[:multi_tenancy][:current_tenant] || default_agency
  end

  private
  
  def default_agency
    @default_agency = Agency.find_by(parent_agency_id: nil)
  end
end