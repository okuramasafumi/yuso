module Yuso
  class DeliveryTimePeriod
    attr_reader :company, :period, :deadline
    def initialize(company:, period:, deadline: nil)
      @company = company
      @period = period
      @deadline = deadline
    end

    def to_s
      period
    end
  end
end
