class ProceduralStep < ActiveRecord::Base

	belongs_to :recipe, :inverse_of => :procedural_steps
	
	has_attached_file :media_file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", :if => lambda { |attachment| attachment.instance.is_image? }
  has_attached_file :media_file, :if => lambda { |attachment| attachment.instance.is_video? }
  validates_attachment_content_type :media_file, :content_type => ['image/png', 'image/jpeg', 'image/jpg', 'image/gif', 'video/x-msvideo','video/avi','video/quicktime','video/3gpp','video/x-ms-wmv','video/mp4','video/mpeg','video/x-flv', 'application/octet-stream'],
     :message => "Invalid image format"

  def is_image?
    self.media_file_content_type.include?("image")
  end

  def is_video?
    self.media_file_content_type.include?("video")
  end  
end
