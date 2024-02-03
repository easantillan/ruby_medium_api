module MediumApi
    class Publication < Struct.new(:id, :description, :name, :url, :image_url, keyword_init: true)
    end
end
