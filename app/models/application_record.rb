class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  extend ::ActiveRecordExtension::ActAsMultiTenant
end
