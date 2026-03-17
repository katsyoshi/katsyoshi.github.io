require "test/unit"

class TestFibo < Test::Unit::TestCase
  def test_fibo
    box = Ruby::Box.new
    box.require "./load_so"
    assert_equal 55, box::Fibonacci.fibo(10)
  end
  def test_load_fiddle_2
    omit('"Ruby::Box" needs RUBY_BOX=1') unless ENV["RUBY_BOX"] == "1"
    box = Ruby::Box.new
    box.require "./load_so"
    assert_equal(box::Foo.fibo(10), 55)
  end
end
