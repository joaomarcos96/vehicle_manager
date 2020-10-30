require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles :fiat_uno
  end

  test 'should get index' do
    get vehicles_url
    assert_response :ok
  end

  test 'should create vehicle' do
    assert_difference 'Vehicle.count' do
      post vehicles_url, params: params
    end

    assert_response :created
  end

  test 'should show vehicle' do
    get vehicle_url @vehicle
    assert_response :ok
  end

  test 'should update vehicle' do
    put vehicle_url @vehicle, params: params
    assert_response :ok
  end

  test 'should delete vehicle' do
    delete vehicle_url @vehicle
    assert_response :no_content
  end

  def params
    {
      vehicle: {
        make: @vehicle.make,
        model: @vehicle.model,
        year: @vehicle.year,
        sold: @vehicle.sold,
        description: @vehicle.description
      }
    }
  end
end
