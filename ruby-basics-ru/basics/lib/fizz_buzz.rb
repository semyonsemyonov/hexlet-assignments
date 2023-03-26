# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop

  result = (start..stop).map do |num|
    fizz = (num % 3).zero?
    buzz = (num % 5).zero?
    detect_fizz_buzz(fizz, buzz, num)
  end

  result.join(' ')
end

def detect_fizz_buzz(fizz, buzz, num)
  if fizz && buzz
    'FizzBuzz'
  elsif fizz
    'Fizz'
  elsif buzz
    'Buzz'
  else
    num
  end
end
# END
