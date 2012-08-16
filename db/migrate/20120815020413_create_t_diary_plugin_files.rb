class CreateTDiaryPluginFiles < ActiveRecord::Migration
  def change
    create_table :t_diary_plugin_files do |t|
      t.integer :commit_id
      t.string :path

      t.timestamps
    end
  end
end
