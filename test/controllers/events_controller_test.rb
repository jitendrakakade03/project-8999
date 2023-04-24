require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { date_event: @event.date_event, event_capacity: @event.event_capacity, event_city: @event.event_city, event_description: @event.event_description, event_end_time: @event.event_end_time, event_entry_fees: @event.event_entry_fees, event_start_time: @event.event_start_time, event_status: @event.event_status, name_event: @event.name_event } }, as: :json
    end

    assert_response :created
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { date_event: @event.date_event, event_capacity: @event.event_capacity, event_city: @event.event_city, event_description: @event.event_description, event_end_time: @event.event_end_time, event_entry_fees: @event.event_entry_fees, event_start_time: @event.event_start_time, event_status: @event.event_status, name_event: @event.name_event } }, as: :json
    assert_response :success
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event), as: :json
    end

    assert_response :no_content
  end
end
