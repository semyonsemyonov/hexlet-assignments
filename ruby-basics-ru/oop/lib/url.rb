# frozen_string_literal: true
require 'uri'
require 'forwardable'

# BEGIN
class Url
  include Comparable
  extend Forwardable

  def_delegators :@uri, :host, :scheme, :port

  def initialize(url)
    @uri = URI.parse(url)
    query = @uri.query
    @params = build_params(query)
  end

  def build_params(query)
    return {} unless query

    query.split('&').each_with_object({}) do |query_parts, acc|
      key, value = query_parts.split '='
      acc[key.to_sym] = value
    end
  end

  def query_params
    @params
  end

  def query_param(key, default = nil)
    @params.fetch(key, default)
  end

  def <=>(other)
    [scheme, host, port, query_params] <=> [other.scheme, other.host, other.port, other.query_params]
  end
end
# END
