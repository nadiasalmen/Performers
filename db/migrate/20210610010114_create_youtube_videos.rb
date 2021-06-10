class CreateYoutubeVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_videos do |t|
      t.string :video_url
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
