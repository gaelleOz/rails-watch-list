class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie, :scope => :list

  def find_by_list(list)
    Bookmark.all.each do |b|
      return b if b.list == list
    end
  end
end
