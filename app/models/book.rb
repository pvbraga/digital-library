class Book < ActiveRecord::Base
	require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|

      book_hash = row.to_hash # exclude the price field
      book = Book.where(id: book_hash["id"])

      if book.count == 1
        book.first.update_attributes(book_hash)
      else
        Book.create!(book_hash)
      end # end if !book.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
