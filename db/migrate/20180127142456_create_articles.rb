class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :user
      t.string :url, null: false
      t.string :title, null: false
      t.text :description, null: true
      t.text :preview, null: true, comment: '스크롤링을 통해서 얻은 정보를 수집하기 위한 컬럼'
      t.integer :link_count, default: 0, null: false
      t.integer :like, default: 0, null: false
      t.integer :dislike, default: 0, null: false
      t.timestamps
    end
  end
end
