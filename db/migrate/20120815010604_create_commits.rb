class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.datetime :date
      t.string :message
      t.string :tree
      t.string :url
      t.string :sha

      t.timestamps
    end
  end
end
