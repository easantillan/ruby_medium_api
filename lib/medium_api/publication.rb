module MediumApi
    class Publication < Struct.new(:id, :description, :name, :url, :image_url, keyword_init: true)
        include ResourceApi

        def contributors
            client.publication_contributors(id)&.map do |contributor|
                Contributor.new(contributor)
            end
        end
    end
end
