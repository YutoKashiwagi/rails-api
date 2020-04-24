require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:user) { create(:user) }

  describe '#index' do
    before { get users_path }

    example '200レスポンスを返すこと' do
      expect(response).to have_http_status(200)
    end
  end

  describe '#show' do
    before { get user_path(user.id) }

    example '200レスポンスを返すこと' do
      expect(response).to have_http_status(200)
    end

    example 'jsonを返すこと' do
      get user_path(user.id)
      json = JSON.parse(response.body)
      expect(json['name']).to eq user.name
    end
  end

  describe '#create' do
    example '正常に作成できること' do
      expect do
        post users_path, params: { user: { name: 'hoge' } }
      end.to change(User, :count).by(1)
    end
  end

  describe '#destroy' do
    example '正常に削除できること' do
      expect do
        delete user_path(user.id)
      end.to change(User, :count).by(-1)
    end
  end

  describe '#update' do
    example '正常に編集できること' do
      put user_path(user.id), params: { user: { name: 'updated' } }
      expect(response).to have_http_status(200)
      expect(response.body).to include('updated')
    end
  end
end
