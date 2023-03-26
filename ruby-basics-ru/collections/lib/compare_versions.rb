# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  map_to_int(ver1) <=> map_to_int(ver2)
end

def map_to_int(ver)
  ver.split('.').map(&:to_i)
end
# END
