class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.references :user, index: true, foreign_key: true
      t.string :youtube_url
      t.timestamps

      t.index :youtube_url, unique: true
    end
  end
end
