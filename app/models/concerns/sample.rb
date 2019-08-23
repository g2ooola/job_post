# require 'active_support/concern'
module Sample
  extend ActiveSupport::Concern

  module ClassMethods
    ORDER_BY_RAND_LIMIT = 2000

    # maybe need to cache result
    def actived_sample(sample_num)
      if active_count < sample_num
        return actived
      elsif active_count < ORDER_BY_RAND_LIMIT
        return actived_sample_for_few_records(sample_num)
      else
        return actived_sample_for_large_records(sample_num)
      end
    end

    # 使用 order by rand 在 record 多時, 有效能問題
    # 若是 pg 9.5 以上, 可以使用 sample table 來隨機取 record
    def actived_sample_for_few_records(sample_num)
      actived.order('RANDOM()').limit(sample_num)
    end

    def actived_sample_for_large_records(sample_num)
      active_ids = get_actived_sample_id(sample_num)
      where(id: active_ids)
    end

    private

    SAMPLE_PARM = 4
    def get_actived_sample_id(num)
      max_offset = active_count - num
      return actived.pluck(:id) if max_offset < 1

      active_ids = []
      SAMPLE_PARM.times do
        active_ids += actived.offset(rand(max_offset)).limit(num).pluck(:id)
      end

      active_ids.uniq.sample(num)
    end

    def active_count
      @active_count ||= actived.count
    end
  end
end