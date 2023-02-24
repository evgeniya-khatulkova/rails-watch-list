class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  has_many :bookmarks
  before_destroy :ensure_no_children

  private

  def ensure_no_children
    raise ActiveRecord::InvalidForeignKey unless bookmarks.empty?
  end
end
