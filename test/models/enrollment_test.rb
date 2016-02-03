require 'test_helper'


class EnrollmentTest < ActiveSupport::TestCase
  def setup
    @client = Client.create(clientname: "yosafat", email: "yosafat@example.com")
    @enrollment = @client.enrollments.build(name: "Yosafat", last_name: "Ariel", dob: "12/12/2012", address: "Perumahan Wisma Jaya",
    telephone: "82403788", post_code: "124567", suburb: "Bekasi", occupation: "programmer",
    past_medical_history: "Diabetic", medication: "Diabetic medication", symptoms: "I don't have any symptoms")
  end
  
  test "enrollment should be valid" do 
    assert @enrollment.valid?
  end
  
  test "client_id should be valid" do
    @enrollment.client_id = nil
    assert_not @enrollment.valid?
  end
  
  test "name should be presence" do
    @enrollment.name = " "
    assert_not @enrollment.valid?
  end
  
  test "name length should not be too long" do
    @enrollment.name = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "name length should not be too short" do
    @enrollment.name = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "last_name should be present" do
    @enrollment.last_name = " "
    assert_not @enrollment.valid?
  end
  
  test "last_name length should not be too long" do
    @enrollment.last_name = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "last_name length should not be too short" do
    @enrollment.last_name = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "dob should be present" do
    @enrollment.dob = " "
    assert_not @enrollment.valid?
  end
  
  test "address should be present" do
    @enrollment.address = " "
    assert_not @enrollment.valid?
  end
  
  test "address length should not be too long" do
    @enrollment.address = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "address length should not be too short" do
    @enrollment.address = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "suburb should be present" do
    @enrollment.suburb = " "
    assert_not @enrollment.valid?
  end
  
  test "suburb length should not be too long" do
    @enrollment.suburb = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "suburb length should not be too short" do
    @enrollment.suburb = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "occupation should be present" do
    @enrollment.occupation = " "
    assert_not @enrollment.valid?
  end
  
  test "occupation length should not be too long" do
    @enrollment.occupation = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "occupation length should not be too short" do
    @enrollment.occupation = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "past_medical_history length should not be too long" do
    @enrollment.past_medical_history = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "past_medical_history length should not be too short" do
    @enrollment.past_medical_history = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "medication length should not be too long" do
    @enrollment.medication = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "medication length should not be too short" do
    @enrollment.medication = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "symptoms length should not be too long" do
    @enrollment.symptoms = "a" * 101
    assert_not @enrollment.valid?
  end
  
  test "symptoms length should not be too short" do
    @enrollment.symptoms = "aaaa"
    assert_not @enrollment.valid?
  end
  
  test "telephone should be present" do
    @enrollment.telephone = " "
    assert_not @enrollment.valid?
  end
  
  test "post_code should be present" do
    @enrollment.post_code = " "
    assert_not @enrollment.valid?
  end

  
end