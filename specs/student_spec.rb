require('minitest/autorun')
require('minitest/rg')
require_relative('../models/Student.rb')
class TestStudentClass < MiniTest::Test

  def test_can_create_student
    student = Student.new("Hermione", "Granger", 13)
    assert_equal("Hermione", student.first_name)
    assert_equal("Granger", student.last_name)
    assert_equal(13, student.age)
  end

end