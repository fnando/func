module Func
  module Hash
    # Deep fetch values out of a hash.
    #
    #   target = {a: {b: {c: 1}}}
    #   hash_fetch(target, :a, :b, :c)
    #   #=> 1
    #
    #   hash_fetch(target, :a, :b, :c, :d)
    #   # raises KeyError
    #
    def hash_fetch(target, *keys)
      keys.each {|key| target = target.fetch(key) }
      target
    end

    # Returns a hash that includes everything except given keys.
    #
    #   target = {a: 1, b: 2, c: 3}
    #   hash_except(target, :a, :b)
    #   #=> {c: 3}
    #
    def hash_except(target, *keys)
      target.dup.delete_if {|key, value| keys.include?(key) }
    end
  end
end
