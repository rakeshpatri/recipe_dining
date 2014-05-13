class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :recipes, :inverse_of => :user
	has_many :user_social_handles
	has_one :address
	has_attached_file :user_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => ":class/:style/missing.gif", 
                    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension",
                    :url => "/system/:class/:attachment/:id/:style/:basename.:extension"
	has_attached_file :kitchen_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => ":class/:style/missing.gif", 
                    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension",
                    :url => "/system/:class/:attachment/:id/:style/:basename.:extension"
	has_attached_file :family_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => ":class/:style/missing.gif", 
                    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension",
                    :url => "/system/:class/:attachment/:id/:style/:basename.:extension"
	
	accepts_nested_attributes_for :address, :user_social_handles
	validates_attachment_content_type :user_photo, :content_type => ['image/jpeg', 'image/png','image/gif','image/jpg']
	validates_attachment_content_type :kitchen_photo, :content_type => ['image/jpeg', 'image/png','image/gif','image/jpg']
	validates_attachment_content_type :family_photo, :content_type => ['image/jpeg', 'image/png','image/gif','image/jpg']
	rails_admin do
		object_label_method do
      :custom_label_method
    end

    edit do
    	field :salutation, :enum do
    		enum do
    			["Mr", "Ms", "Mrs", "Dr"]
    		end
    	end
    	field :first_name
    	field :last_name
    	include_all_fields
    	exclude_fields :recipes, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at,
    	 								:current_sign_in_ip, :last_sign_in_ip
    end
	end
	def custom_label_method
		"#{self.first_name}  #{self.last_name}"
	end
end
