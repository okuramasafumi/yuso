require 'yuso/delivery_time_period'
module Yuso
  class Yubin
    def self.delivery_time_periods
      [
        DeliveryTimePeriod.new(company: 'yubin', period: '08:00 ~ 12:00'),
        DeliveryTimePeriod.new(company: 'yubin', period: '12:00 ~ 14:00'),
        DeliveryTimePeriod.new(company: 'yubin', period: '14:00 ~ 16:00'),
        DeliveryTimePeriod.new(company: 'yubin', period: '16:00 ~ 18:00'),
        DeliveryTimePeriod.new(company: 'yubin', period: '18:00 ~ 20:00'),
        DeliveryTimePeriod.new(company: 'yubin', period: '20:00 ~ 21:00')
      ]
    end
  end
end
