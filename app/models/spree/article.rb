module Spree
  class Article < Spree::Base
    self.table_name = 'spree_articles'

    include SpreeGlobalize::Translatable
    translates :title, :content, :summary,
              :meta_title, :meta_description, :meta_keywords,
              fallbacks_for_empty_translations: true

    scope :published, -> { where(publish: true).where('published_at < ?', DateTime.now).includes(:translations) }

    def next
      self.class.published.order(published_at: :asc).includes(:translations).find_by('published_at > ?', published_at)
    end

    def prev
      self.class.published.order(published_at: :desc).includes(:translations).find_by('published_at < ?', published_at)
    end
  end
end
