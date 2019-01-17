require 'rails_helper'

describe CategoryController do
  describe 'GET #index' do
    it "＃indexのviewを表示" do
      get :index
      expect(response).to render_template :index
    end

    it "親カテゴリーを全て取得できているか" do
      get :index
      expect(assigns(:categoryroot).length).to eq 13
    end

  end

  describe 'GET #show' do
    it "検索するカテゴリーを取得できているか" do
      get :show, params: { id: 3}
      expect(assigns(:category)).to eq Category.find(3)
    end

    it "選択されたカテゴリーで商品を検索できるか" do

      product = create(:product,category_id: 470,seller: 10)
      get :show,params: { id: 3}
      expect(assigns(:products)).to eq [product]

    end

    it "#showのviewを表示" do
      product = create(:product,category_id: 470,seller: 10)
      get :show, params: { id: 3}
      expect(response).to render_template :show
    end

  end


end
