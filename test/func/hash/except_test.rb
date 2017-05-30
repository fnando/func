require "test_helper"

class HashExceptTest < Minitest::Test
  test "returns hash without one key" do
    target = {a: 1, b: 2, c: 3}
    assert_equal Hash[b: 2, c: 3], Func.hash_except(target, :a)
  end

  test "returns hash without multiple keys" do
    target = {a: 1, b: 2, c: 3}
    assert_equal Hash[b: 2], Func.hash_except(target, :a, :c)
  end

  test "keeps original target intact" do
    target = {a: 1, b: 2, c: 3}
    Func.hash_except(target, :a, :c, :c)

    assert_equal Hash[a: 1, b: 2, c: 3], target
  end
end
