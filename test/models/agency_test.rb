# == Schema Information
#
# Table name: agencies
#
#  id                  :integer          not null, primary key
#  name                :string
#  host_name           :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  main_color          :string
#  secondary_color     :string
#  multi_tenancy_level :integer
#  parent_agency_id    :integer
#
require "test_helper"

class AgencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
