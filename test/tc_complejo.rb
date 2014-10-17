require '../lib/complejo'
require 'test/unit'


class TestComplejo < Test::Unit::TestCase
  
  def setup
    @v1=Complejo.new(1,1)
    @v2=Complejo.new(5,2)
    @v3=Complejo.new(2,-3)
    @v4=Complejo.new(3,2)
    @v5=Complejo.new(1,-2)

  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(1,1i)","(#{@v1.x},#{@v1.y}i)")
    @v6=@v1+@v2
    assert_equal("(6,3i)","(#{@v6.x},#{@v6.y}i)")
    @v6=@v2-@v1
    assert_equal("(4,1i)","(#{@v6.x},#{@v6.y}i)")
    @v6=@v1*5
    assert_equal("(5,5i)","(#{@v6.x},#{@v6.y}i)")
    @v6=@v2*@v3
    assert_equal("(16,-11i)","(#{@v6.x},#{@v6.y}i)")
    @v6=@v4/@v5
    assert_equal("(-1/5,8/5i)","(#{@v6.x},#{@v6.y}i)")
  end
  def test_type_check
    assert_raise(RuntimeError) {Complejo.new('1','1')}
  end
  def test_failure
    @v6=@v1*5
    assert_equal("(5,5i)","(#{@v6.x},#{@v6.y}i)","Producto escalar")
  end
end