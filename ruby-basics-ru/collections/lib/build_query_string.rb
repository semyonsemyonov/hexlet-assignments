# frozen_string_literal: true

# BEGIN
def build_query_string(params = {})
  params.sort_by(&:first).map { |key, val| "#{key}=#{val}" }.join('&')
end
# END
