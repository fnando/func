module Func
  module Hash
    # Deep fetch values out of a hash.
    #
    #   hash_fetch(target, :a, :b, :c)
    #   target.fetch(:a).fetch(:b).fetch(:c)
    #
    def hash_fetch(target, *keys)
      keys.each {|key| target = target.fetch(key) }
      target
    end
  end
end
