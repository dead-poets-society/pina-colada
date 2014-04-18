class Moment

  attr_accessor :records, :new_record_count

  def initialize
    @records = mock_records
    @new_record_count = 0
  end

  def new_record(record)
    self.records << record
    self.new_record_count += 1
  end

  def mock_records
    [
        {
            title: "12:15 米多吃奶",
            action: :open_detail,
            arguments: {time: 12}
        },
        {
            title: "15:15 米多拉屎",
            action: :open_detail,
            arguments: {time: 15}
        },
    ]
  end

end