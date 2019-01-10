module ProductsHelper
  def converting_to_jpy(price)
    "¥" + "#{price.to_s(:delimited, delimiter: ',')}円"
  end

    def converting_to_condition(condition)
      if condition == 1
        return "新品、未使用"
      elsif condition == 2
        return "未使用に近い"
      elsif condition == 3
        return "目立った傷や汚れなし"
      elsif condition == 4
        return "やや傷や汚れあり"
      elsif condition == 5
        return "傷や汚れあり"
      elsif condition == 6
        return "全体的に状態が悪い"
      end
    end

    def converting_to_condition(shipmentday)
      if shipmentday == 1
        return "1日~2日で発送"
      elsif shipmentday == 2
        return "2日~3日で発送"
      elsif shipmentday == 3
        return "4日~7日で発送"
      end
    end
end
