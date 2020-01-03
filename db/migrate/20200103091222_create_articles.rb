class CreateArticles < SpreeExtension::Migration
  def change
    create_table :spree_articles do |t|
      t.string :title
      t.string :img
      t.text :text
      t.timestamp :published_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.boolean :publish, default: true
      t.timestamps
    end
  end
end
