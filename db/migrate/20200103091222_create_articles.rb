class CreateArticles < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_articles do |t|
      t.string :slug
      t.string :img
      t.timestamp :published_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.boolean :publish, default: true
      t.timestamps
    end
  end
end
