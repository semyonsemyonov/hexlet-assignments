# frozen_string_literal: true

# BEGIN
def fibonacci(number)
  return number if (0..1).include? number

  (fibonacci(number - 1) + fibonacci(number - 2))
end
# END
