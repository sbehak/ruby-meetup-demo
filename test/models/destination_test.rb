# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  name       :string
#  agency_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :integer
#  tenant_1   :integer
#  tenant_2   :integer
#  tenant_3   :integer
#  tenant_4   :integer
#  tenant_5   :integer
#
require "test_helper"

class DestinationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end