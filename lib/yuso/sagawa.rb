require 'yuso/delivery_time_period'
module Yuso
  class Sagawa
    def self.delivery_time_periods
      [
          DeliveryTimePeriod.new(company: 'sagawa', period: '08:00 - 12:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '12:00 - 14:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '14:00 - 16:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '16:00 - 18:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '18:00 - 20:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '18:00 - 21:00'),
          DeliveryTimePeriod.new(company: 'sagawa', period: '19:00 - 21:00')
      ]
    end
  end
end
