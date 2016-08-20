require 'test_helper'

class JobQuotesControllerTest < ActionController::TestCase
  setup do
    @job_quote = job_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_quote" do
    assert_difference('JobQuote.count') do
      post :create, job_quote: { job_id: @job_quote.job_id, price: @job_quote.price, user_id: @job_quote.user_id }
    end

    assert_redirected_to job_quote_path(assigns(:job_quote))
  end

  test "should show job_quote" do
    get :show, id: @job_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_quote
    assert_response :success
  end

  test "should update job_quote" do
    patch :update, id: @job_quote, job_quote: { job_id: @job_quote.job_id, price: @job_quote.price, user_id: @job_quote.user_id }
    assert_redirected_to job_quote_path(assigns(:job_quote))
  end

  test "should destroy job_quote" do
    assert_difference('JobQuote.count', -1) do
      delete :destroy, id: @job_quote
    end

    assert_redirected_to job_quotes_path
  end
end
