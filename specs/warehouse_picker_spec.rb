require( 'minitest/autorun' )
require_relative( '../warehouse_picker_functions.rb' )

class Warehouse_Picker< MiniTest::Test
  
  # 1
  def test_return_item()
    result = return_item(:b5)
    assert_equal("nail filer", result)
  end

  # 2
  def test_return_bay()
    result = return_bay("nail filer")
    assert_equal(:b5, result )
  end

  # 3
  def test_return_multi_items()
    result = return_multi_items(:b5, :b10, :b6)
    assert_equal(["nail filer", "cookie jar", "tooth paste"], result)
  end
  
  # 4
  def test_return_multi_bays()
    result = return_multi_bays("shoe lace", "rusty nail", "leg warmers")
    assert_equal([:c9, :c1, :c10], result)
  end

  # 5
  def test_number_of_bays_apart()
    result = number_of_bays_apart(:b5, :b10, :b6)
    assert_equal(5, result)
  end

end