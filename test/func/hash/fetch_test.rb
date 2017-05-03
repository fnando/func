require "test_helper"

class HashFetchTest < Minitest::Test
  test "returns value" do
    target = {a: {b: {c: 1}}}
    assert_equal 1, Func.hash_fetch(target, :a, :b, :c)
  end

  test "raises exception for missing key" do
    assert_raises(KeyError, /key not found: :a/) { Func.hash_fetch({}, :a, :b, :c) }
  end
end
