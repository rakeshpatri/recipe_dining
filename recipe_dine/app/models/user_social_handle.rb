class UserSocialHandle < ActiveRecord::Base
	belongs_to :user, :inverse_of => :user_social_handles
	rails_admin do
		edit do
			exclude_fields :user_id
		end
	end
end
