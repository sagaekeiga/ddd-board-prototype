module PictgramsHelper
  def return_two_span(td_number)
    if Pictgram.find_by(td_number: td_number)
      '2' if Pictgram.find_by(td_number: td_number).element?
    end
  end
end
