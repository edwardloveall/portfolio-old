class AddAttachmentToProjects < ActiveRecord::Migration
  def change
    add_attachment :projects, :poster
  end
end
