class CreateTDiaryPluginFiles < ActiveRecord::Migration
  def change
    create_table :t_diary_plugin_files do |t|
      t.string :path

      t.timestamps
    end
  end
end
