module MediumApi
    class Post < Struc.new(:id, :title, :author_id, :tags, :url, :canonical_url, :publish_status, :published_at, :license, :license_url, keyword_init: true)
    end
end
