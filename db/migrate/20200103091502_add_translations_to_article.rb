class AddTranslationsToArticle < SpreeExtension::Migration[4.2]
  def up
    params = {
      title: :string,
      content: :text,
      summary: :string,
      meta_title: :string,
      meta_description: :string,
      meta_keywords: :string
    }
    Spree::Article.create_translation_table! params
  end

  def down
    Spree::Article.drop_translation_table!
  end
end
