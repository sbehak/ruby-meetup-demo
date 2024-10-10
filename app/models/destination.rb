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
class Destination < ApplicationRecord
  acts_as_multi_tenant

  belongs_to :agency
  has_one_attached :image

  before_save :assign_tenants

  private

  def assign_tenants
    tenant = agency
    while tenant.present?
      tenant_level = tenant.multi_tenancy_level
      self["tenant_#{tenant_level}"] = tenant.id
      tenant = tenant.parent_agency
    end
  end
end
