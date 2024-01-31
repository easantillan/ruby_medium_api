module MediumApi
  class User < Struct.new(:id, :username, :name, :url, :imageUrl, keyword_init: true)
  end
end