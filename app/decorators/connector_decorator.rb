class ConnectorDecorator < ApplicationDecorator
  delegate_all

  #
  # 記号を返す
  #
  def direction
    case symbol
    when '↑'
      'fa fa-long-arrow-up'
    when '←'
      'fa fa-long-arrow-left'
    when '→'
      'fa fa-long-arrow-right'
    when '↓'
      'fa fa-long-arrow-down'
    end
  end
end
