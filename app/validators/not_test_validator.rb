class NotTestValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.match(/test/)
      record.errors[attribute] << "testという文字を含んで登録はできません"
    end
  end
end
