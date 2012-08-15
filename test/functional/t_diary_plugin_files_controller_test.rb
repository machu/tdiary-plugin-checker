require 'test_helper'

class TDiaryPluginFilesControllerTest < ActionController::TestCase
  setup do
    @t_diary_plugin_file = t_diary_plugin_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_diary_plugin_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_diary_plugin_file" do
    assert_difference('TDiaryPluginFile.count') do
      post :create, t_diary_plugin_file: { path: @t_diary_plugin_file.path }
    end

    assert_redirected_to t_diary_plugin_file_path(assigns(:t_diary_plugin_file))
  end

  test "should show t_diary_plugin_file" do
    get :show, id: @t_diary_plugin_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_diary_plugin_file
    assert_response :success
  end

  test "should update t_diary_plugin_file" do
    put :update, id: @t_diary_plugin_file, t_diary_plugin_file: { path: @t_diary_plugin_file.path }
    assert_redirected_to t_diary_plugin_file_path(assigns(:t_diary_plugin_file))
  end

  test "should destroy t_diary_plugin_file" do
    assert_difference('TDiaryPluginFile.count', -1) do
      delete :destroy, id: @t_diary_plugin_file
    end

    assert_redirected_to t_diary_plugin_files_path
  end
end
