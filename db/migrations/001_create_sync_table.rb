class CreateSyncTable < Sequel::Migration
  def up
   create_table   :syncs do
     primary_key  :id
     String       :bucket #this is the same as the Rackspace Cloud Files container
     String       :file_name
     String       :file_extention
     String       :download_location
     String       :failed_reason
     Integer      :status #0 pending - 1 inprogress - 2 success - 3 failed
     DateTime     :created_at
     DateTime     :updated_at
   end 
  end

  def down
    drop_table :syncs
  end
end
