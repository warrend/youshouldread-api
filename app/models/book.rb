class Book < ApplicationRecord
	validates :title, :author, :pages, :review, :category, presence: true
	validates :genre, inclusion: {in: %w(fiction nonfiction), message: "Must be only fiction or nonfiction."}
end
