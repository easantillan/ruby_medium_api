module MediumApi
    module Utils
        module_function

        def underscore_keys(hash)
            hash.transform_keys do |k|
                new_key = underscore(k.to_s)
                k.is_a?(Symbol) ? new_key.to_sym : new_key
            end
        end

        def camelize_keys(hash)
            hash.transform_keys do |k|
                new_key = camelize(k.to_s)
                k.is_a?(Symbol) ? new_key.to_sym : new_key
            end
        end

        def underscore str
            str.gsub(/([A-Z])/, '_\1').downcase
        end

        def camelize str
            first_word, *rest_of_words = str.split('_')
            rest_of_words = rest_of_words.map(&:capitalize)
            [first_word, *rest_of_words].join
        end
    end
end
