class CreateMentions < ActiveRecord::Migration[5.1]
  def change
    create_table :mentions do |t|
      t.references :user, foreign_key: true
      t.references :wall_post, foreign_key: true

      t.timestamps
    end
  end
end