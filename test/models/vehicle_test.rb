require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  test 'should save vehicle' do
    car = vehicles :fiat_uno
    assert car.save
  end
end
