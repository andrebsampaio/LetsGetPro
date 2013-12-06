require 'test_helper'

class JobshistoriesControllerTest < ActionController::TestCase
  setup do
    @jobshistory = jobshistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobshistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobshistory" do
    assert_difference('Jobshistory.count') do
      post :create, jobshistory: { company: @jobshistory.company, end: @jobshistory.end, job: @jobshistory.job, location: @jobshistory.location, start: @jobshistory.start }
    end

    assert_redirected_to jobshistory_path(assigns(:jobshistory))
  end

  test "should show jobshistory" do
    get :show, id: @jobshistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobshistory
    assert_response :success
  end

  test "should update jobshistory" do
    patch :update, id: @jobshistory, jobshistory: { company: @jobshistory.company, end: @jobshistory.end, job: @jobshistory.job, location: @jobshistory.location, start: @jobshistory.start }
    assert_redirected_to jobshistory_path(assigns(:jobshistory))
  end

  test "should destroy jobshistory" do
    assert_difference('Jobshistory.count', -1) do
      delete :destroy, id: @jobshistory
    end

    assert_redirected_to jobshistories_path
  end
end
