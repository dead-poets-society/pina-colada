class Moment

  def initialize
  end

  def new_record(record)
    self.records << record
    self.new_record_count += 1
  end

  def self.mock_grouped_table_data
    [
      {
        title: "Section One",
        cells: [
          {title: "row one of sec one"},
          {title: "row two of sec one"}
        ]
      }, {
        title: 'Section Two',
        cells: [
          {title: 'row one of sec two'},
          {title: 'row two of sec two'}
        ]
      }
    ]
  end

  def self.mock_formotion_table_data
    {
      sections:
        [
          {
            title: '2014/04/22',
            rows:
              [{
                 title: '08:15',
                 type: :text,
                 subtitle: 'left side',
                 value: 'Mi Duo ate milk.',
                 image: 'breast_feed_32'.uiimage,
                 input_accessory: :done
               }, {
                 title: '10:30',
                 type: :text,
                 subtitle: 'normal',
                 value: 'Mi Duo ate fruit',
                 image: 'apple_32'.uiimage
               }, {
                 title: '15:30',
                 type: :text,
                 subtitle: 'normal',
                 value: 'Mi Duo poo',
                 image: 'poo_32'.uiimage
               }, {
                 title: '20:30',
                 type: :text,
                 subtitle: '230 ml',
                 value: 'Mi Duo drink water',
                 image: 'bottle_32'.uiimage,
                 input_accessory: :done
               }]
          }, {
            title: '2014/04/21',
            rows:
              [{
                 title: '11:15',
                 type: :text,
                 value: 'Mi Duo was fed',
                 subtitle: 'right side',
                 image: 'breast_feed_32'.uiimage,
                 input_accessory: :done
               }, {
                 title: '20:30',
                 type: :text,
                 subtitle: '2 hours',
                 value: 'Mi Duo felt asleep',
                 image: 'sleep_32'.uiimage,
                 input_accessory: :done
               }, {
                 title: '21:10',
                 type: :text,
                 subtitle: 'left side',
                 value: 'Mi Duo was fed',
                 image: 'breast_feed_32'.uiimage,
                 input_accessory: :done
               }, {
                 title: '23:30',
                 type: :text,
                 subtitle: '130 ml',
                 value: 'Mi Duo drink water',
                 image: 'bottle_32'.uiimage,
                 input_accessory: :done
               }]
          }, {
            title: '2014/04/20',
            rows:
              [{
                 title: '09:15',
                 type: :text,
                 value: 'Mi Duo was fed',
                 subtitle: 'left side',
                 image: 'breast_feed_32'.uiimage,
                 input_accessory: :done
               }, {
                 title: '20:30',
                 type: :text,
                 subtitle: '2 hours',
                 value: 'Mi Duo felt asleep',
                 image: 'sleep_32'.uiimage,
                 input_accessory: :done
               }]
          }]
    }
  end

end