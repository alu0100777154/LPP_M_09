require '../lib/complejo'
require 'test/unit'


class TestComplejo < Test::Unit::TestCase
  def setup
    @v1 = Complejo.new(1,6)
    @v2 = Complejo.new(5,3)
  end
  def tear_down
    # nothing
  end
  def test_simple
	assert
  end
  def test_type_check
    assert_raise(RuntimeError) {Complejo.new('1','1')}
  end
  def test_failure
    assert_equal("(5,5)",(@origen*5).to_s,"Producto escalar")
  end
end
