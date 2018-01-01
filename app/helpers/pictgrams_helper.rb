module PictgramsHelper

  #
  # (rowspanの値である)2を返す
  #
  # @param [String] td_number tdの通し番号
  #
  # @return [String] エレメントがあれば2を返す
  #
  def return_two_span(td_number)
    if Pictgram.find_by(td_number: td_number)
      '2' if Pictgram.find_by(td_number: td_number).element?
    end
  end

  #
  # pictgramを表示する
  #
  # @param [String] td_number tdの通し番号
  #
  # @return
  #   1. エレメントであれば、エレメントのドメイン名を返す
  #   2. コネクタであれば、コネクタのディレクションを返す
  #   3. エレメント・コネクタでなければピクトグラム登録リンクを返す
  def show_pictgrams(td_number)
    if Pictgram.present_by_td_number?(td_number)
      if Domain.present_by_td_number?(td_number)
        link_to pictgram_path(Pictgram.find_by_td_number(td_number)), remote: true do
          content_tag(:i, class: 'fa fa-user-circle-o') do
            # 1
            content_tag(:small, Domain.find_by_id(Pictgram.find_by_td_number(td_number).domain_id).logical_name, class: 'm-t-1')
          end
        end
      else
        content_tag(:i, class: Connector.find_by_id(Pictgram.find_by_td_number(td_number).connector_id).decorate.direction) do
          # 2
          Pictgram.find_by_td_number(td_number).spending_line
        end
      end
    else
      # 3
      link_to '　', new_pictgram_path(td_number: td_number), remote: true
    end
  end
end
