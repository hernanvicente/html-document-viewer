require './test/test_helper'
require_relative '../app'

#include Rack::Test::Methods

class AppTest < Minitest::Test
  include FactoryGirl::Syntax::Methods
  def app
    Sinatra::Application
  end

  def setup
    @document = build(:document)
  end

  def test_true_is_true
    assert true
  end

  def assert_presence(model, field)
    model.valid?
    assert_match(/can't be blank/, model.errors[field].join,
      "Presence error for #{field} not found on #{model.class}")
  end

  def test_invalid_name_give_error_message
    @document.name = nil
    assert_presence(@document, :name)
  end

  def test_invalid_description_gives_error_message
    @document.description = nil
    assert_presence(@document, :description)
  end

end
