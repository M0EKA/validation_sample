class Book < ApplicationRecord
  include ActiveModel::Validations
  # validate :title_valid?
  validates :title, length: { in: 4..32 }, not_test: true
  validates :author, not_test: true
  validates_with TitleAuthorValidator

  private

  # def title_valid?
  #   if self.title.match(/test/)
  #     errors.add(:title, "testという文字の入ったtitleは登録できない")
  #   end
  # end
end
