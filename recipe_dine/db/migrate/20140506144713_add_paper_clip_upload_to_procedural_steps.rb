class AddPaperClipUploadToProceduralSteps < ActiveRecord::Migration
  def change
  	add_attachment :procedural_steps, :media_file
  end
end
