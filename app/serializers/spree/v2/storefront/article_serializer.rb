module Spree::V2
  module Storefront
    class ArticleSerializer < BaseSerializer
      set_type :article

      attributes :title, :content, :summary, :published_at,
                :meta_title, :meta_description, :meta_keywords
    end
  end
end
