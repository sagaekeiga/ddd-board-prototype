module DashboardsHelper

  #
  # tdの個数を返す
  #
  # @param [String] tr_symbol trのアルファベット
  #
  # @return [Integer] tdの個数
  #
  def td_times(tr_symbol)
    # 10（デフォ） - 一段上の段数にあるelementの数
    10 - Pictgram.count_elements(Settings[:alphabet][Settings[:alphabet].index(tr_symbol) - 1])
  end
end
