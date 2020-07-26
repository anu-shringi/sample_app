class RenameResentAtToResetAt < ActiveRecord::Migration[6.0]
  def change
  	rename_column :users, :resent_sent_at, :reset_sent_at
  end
end
