class Address < ActiveRecord::Base
	belongs_to :user, :inverse_of => :address
	rails_admin do
		edit do
			exclude_fields :user_id
		end
	end
end
