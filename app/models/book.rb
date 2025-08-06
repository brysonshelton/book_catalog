class Book < ApplicationRecord
  belongs_to :user

  def book_params
    params.require(:book).permit(:title, :author, :cover_url, :published_date)
  end
end
