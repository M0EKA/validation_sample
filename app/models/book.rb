class Book < ApplicationRecord
  validate :title_valid?
  validates :title, length: { in: 4..32 }

  private

  def title_valid?
    if self.title.match(/test/)
      errors.add(:title, "testという文字の入ったtitleは登録できない")
    end
  end
end
