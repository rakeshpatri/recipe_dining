class AddPaperclipAttachmentToVariousSteps < ActiveRecord::Migration
  def change
  	add_attachment :storing_steps, :media_file
  	add_attachment :serving_steps, :media_file
  	add_attachment :cooking_steps, :media_file
  	add_attachment :pre_preparation_steps, :media_file
  	add_attachment :garnishing_steps, :media_file
  end
end
