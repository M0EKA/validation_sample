class TitleAuthorValidator < ActiveModel::Validator
  def validate(record)
    # if record.title == record.author
    #   record.errors[:title] << "titleとauthorは同じ名前で登録できません"
    # end
    error_msg = "testという文字を含んで登録はできません"
    %i[title author].each do |column|
      if record[column].match(/test/)
        record.errors[column] << error_msg
      end
    end
  end
end
