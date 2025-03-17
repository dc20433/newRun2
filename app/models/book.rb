class Book < ApplicationRecord
    has_rich_text :content
    has_many_attached :images do |attachable|
        # attachable.variant :thumb, {resize_to_limit: [500, 500], convert: :webp, saver: { subsample_mode: "on", strip: true, interlace: true, quality: 80 }}
        attachable.variant :thumb, {resize_to_limit: [500, 500], format: :webp}
    end
end
