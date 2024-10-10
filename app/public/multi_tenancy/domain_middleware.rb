# frozen_string_literal: true

module MultiTenancy
  class DomainMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      request = Rack::Request.new(env)
      agency = Agency.find_by(host_name: request.host)
      RequestStore.store[:multi_tenancy] = {}
      RequestStore.store[:multi_tenancy][:host] = request.host
      RequestStore.store[:multi_tenancy][:current_tenant] = agency
      @app.call(env)
    end
  end
end
