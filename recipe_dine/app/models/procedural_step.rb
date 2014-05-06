class ProceduralStep < ActiveRecord::Base

	belongs_to :recipe
	
	has_attached_file :media_file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :media_file, :content_type => ['image/png', 'image/jpeg', 'image/jpg', 'image/gif'],
     :message => "Invalid image format",
     :if => :is_type_of_image?
  validates_attachment_content_type :media_file, :content_type => ['video/x-msvideo','video/avi','video/quicktime','video/3gpp','video/x-ms-wmv','video/mp4','video/mpeg','video/x-flv', 'application/octet-stream'],
     :message => "Invalid video format",
     :if => :is_type_of_video?

end
