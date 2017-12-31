# == Schema Information
#
# Table name: architectures
#
#  id         :integer          not null, primary key
#  layer      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Architecture < ApplicationRecord

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  
  #
  # 階層
  #
  # - interface      : ユーザーインターフェース層
  # - application    : アプリケーション層
  # - datasource     : データソース層
  # - domain         : ドメイン層
  # - infrastructure : インフラストラクチャ層
  #
  enum layer: {
    interface: 1000,
    application: 2000,
    datasource: 3000,
    domain: 4000,
    infrastructure: 5000
  }
end
