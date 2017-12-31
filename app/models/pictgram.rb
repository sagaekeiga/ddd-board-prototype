# == Schema Information
#
# Table name: pictgrams
#
#  id           :integer          not null, primary key
#  domain_id    :integer
#  connector_id :integer
#  td_number    :string
#  note         :text
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Pictgram < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_one :connector
  has_one :demand

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------

  # ピクトグラムのステータス
  #
  # - element    : エレメント
  # - connector  : コネクタ
  #
  enum status: {
    element: 1000,
    connector: 2000
  }

  #
  # trごとのelemntのPictgramの数を数えて返す
  #
  # @param [String] tr_symbol trの記号
  #
  def self.count_elements(tr_symbol)
    where('td_number LIKE ?', "#{tr_symbol}%").element.count
  end
end
