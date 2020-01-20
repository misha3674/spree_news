module Spree::V2
  module Storefront
    class ArticleSerializer < BaseSerializer
      set_type :article

      attributes :title, :text, :published_at, :meta_title, :meta_description,
                  :meta_keywords

      # attribute :purchasable,   &:purchasable?
      # attribute :in_stock,      &:in_stock?
      # attribute :backorderable, &:backorderable?

      # has_many :variants
      # has_many :option_types
      # has_many :product_properties
      # has_many :taxons

      # # all images from all variants
      # has_many :images,
      #   object_method_name: :variant_images,
      #   id_method_name: :variant_image_ids,
      #   record_type: :image,
      #   serializer: :image

      # has_one  :default_variant,
      #   object_method_name: :default_variant,
      #   id_method_name: :default_variant_id,
      #   record_type: :variant,
      #   serializer: :variant
    end
  end
end
