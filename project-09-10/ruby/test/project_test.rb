require 'test_helper'
require 'project'

class ProjectTest < Minitest::Test

  def test_empty_string
    assert_equal 0, Project.new.add("")
  end

  def test_1_number
    assert_equal 2, Project.new.add("2")
  end

  def test_many_number
    assert_equal 5, Project.new.add("3,2")
  end

  def test_new_line_delimiter
    assert_equal 6, Project.new.add("1\n2,3")
    assert_equal 6, Project.new.add("1,2\n3")
  end

  def test_any_delimiter
    assert_equal 3, Project.new.add("//;\n1;2")
    assert_equal 7, Project.new.add("//;A3\n4")
  end

  def test_negative_numbers
    #assert_raise
  end
end
