require 'yuso/delivery_time_period'
module Yuso
  class Yamato
    def self.delivery_time_periods
      [
        Yuso::DeliveryTimePeriod.new(company: 'yamato', period: '08:00 ~ 12:00', deadline: '07:00'),
        Yuso::DeliveryTimePeriod.new(company: 'yamato', period: '14:00 ~ 16:00', deadline: '13:40'),
        Yuso::DeliveryTimePeriod.new(company: 'yamato', period: '16:00 ~ 18:00', deadline: '15:40'),
        Yuso::DeliveryTimePeriod.new(company: 'yamato', period: '18:00 ~ 20:00', deadline: '17:40'),
        Yuso::DeliveryTimePeriod.new(company: 'yamato', period: '19:00 ~ 21:00', deadline: '18:40')
      ]
    end
  end
end
