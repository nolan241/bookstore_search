class Book < ActiveRecord::Base
  def self.search(search)
    if search
        @books = Book.where(["name LIKE ?","%#{search}%"])
    else
        all
    end
  end    
end
