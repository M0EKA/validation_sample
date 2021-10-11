class TitleAuthorValidator < ActiveModel::Validator
  def validate(record)
    if record.title == record.author
      record.errors[:title] << "titleとauthorは同じ名前で登録できません"
    end
  end
end
