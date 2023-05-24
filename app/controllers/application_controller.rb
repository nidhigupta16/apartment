class ApplicationController < ActionController::Base
	# around_action :switch_database

  # private

  # def switch_database
  #   subdomain = request.subdomain

  #   Apartment::Tenant.switch!(subdomain) if subdomain.present?

  #   yield
  # ensure
  #   Apartment::Tenant.reset if subdomain.present?
  # end

	
# before_action :current_tenant, only: new

# 	def self.current_tenant
# 		debugger
# 		Apartment::Tenant.switch(request.subdomain)
# 	end
end
