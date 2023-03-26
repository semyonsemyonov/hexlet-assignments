# frozen_string_literal: true

CENSORED_MASC = '$#%!'

def make_censored(text, stop_words)
  # BEGIN
  list_words = text.split(' ')
  result = list_words.map do |word|
    if stop_words.include? word
      CENSORED_MASC
    else
      word
    end
  end

  result.join(' ')
  # END
end
