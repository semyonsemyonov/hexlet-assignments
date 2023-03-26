# frozen_string_literal: true

# BEGIN
def reverse(string)
  new_string = ''
  string.size.times do |index|
    new_string += string[-1 - index]
  end

  new_string
end
# END
