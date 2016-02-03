require 'test_helper'

class ClientTest < ActiveSupport::TestCase
    
  def setup
    @client = Client.new(clientname: "Jhon", email: "jhon@example.com") 
  end
  
  test "Client should be valid" do
    assert @client.valid?
  end
  
  test "clientname should be present" do
    @client.clientname = " "
    assert_not @client.valid?
  end
  
  test "clientname length should not be too long" do
    @client.clientname = "a" * 101
    assert_not @client.valid?
  end
  
  test "clientname length should not be too short" do
    @client.clientname = "aaa"
    assert_not @client.valid?
  end
  
  test "Email should be present" do
    @client.email = " "
    assert_not @client.valid?
  end
  
  test "Email length should be within bounds" do
    @client.email = "a" * 101 + "@example.com"
    assert_not @client.valid?
  end
  
  test "email address should be unique" do
    dup_client = @client.dup
    dup_client.email = @client.email.upcase
    @client.save
    assert_not dup_client.valid?
  end
  
  test "email address should accept valid addresses" do
    valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eem.au laura+joe@monk.cm]
    valid_addresses.each do |va|
      @client.email = va
      assert @client.valid?, '#{va.inspect} should be valid'
      
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
    invalid_addresses.each do |ia|
      @client.email = ia
      assert_not @client.valid?, '#{ia.inspect} should be invalid'
    end
  end
  
end