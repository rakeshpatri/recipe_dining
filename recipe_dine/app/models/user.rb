class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :recipes
	rails_admin do
		object_label_method do
      :custom_label_method
    end
	end
	def custom_label_method
		"#{self.first_name}  #{self.last_name}"
	end
end
