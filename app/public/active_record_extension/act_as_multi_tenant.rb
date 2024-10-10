# frozen_string_literal: true

module ActiveRecordExtension
  module ActAsMultiTenant
    def acts_as_multi_tenant
      default_scope do
        multi_tenancy_data = RequestStore.store[:multi_tenancy]
        current_tenant = multi_tenancy_data[:current_tenant] if multi_tenancy_data.present?
        
        if current_tenant.present?
          level = current_tenant.multi_tenancy_level
          where("tenant_#{level} = ?", current_tenant.id)
        else
          all
        end
      end
    end
  end
end
