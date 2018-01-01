# == Schema Information
#
# Table name: pictgrams
#
#  id           :integer          not null, primary key
#  connector_id :integer
#  domain_id    :integer
#  income_line  :string
#  outcome_line :string
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

  def self.present_by_td_number?(td_number)
    find_by(td_number: td_number).present?
  end

  def self.element?(td_number)
    pictgram = find_by(td_number: td_number)
    return pictgram && pictgram.element?
  end


  def self.connector?(td_number)
    pictgram = find_by(td_number: td_number)
    return pictgram && pictgram.connector?
  end

  def self.find_by_td_number(td_number)
    find_by(td_number: td_number)
  end

end
