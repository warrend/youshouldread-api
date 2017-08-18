class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :pages, :review, :category
end
