class Company < ApplicationRecord
  after_create :create_tenant
  has_many :projects

	def create_tenant
		Apartment::Tenant.create(subdomain)
	end
end
