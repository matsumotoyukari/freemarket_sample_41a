require 'rails_helper'

describe ProductsController do
  describe 'GET #index' do
    it "＃indexのviewを表示" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "要求されたproductを@productsに格納できるか" do
      product = create(:product)
      get :show, params: { id: product}
      expect(assigns(:product)).to eq product
    end

    it "#showのviewを表示" do
      product = create(:product)
      get :show, params: { id: product}
      expect(response).to render_template :show
    end
  end

  describe 'DELETE #destroy' do
    it "商品消去" do
      product = create(:product)
      expect do
        delete :destroy, params: { id: product}
      end.to change(Product, :count).by(-1)
    end

    it "商品消去と同時に紐づく商品画像も消去できる" do
      product = create(:product)
      image = create(:product_image,product_id: product.id)
      expect do
        delete :destroy, params: { id: product}
      end.to change(ProductImage, :count).by(-1)

    end
  end

end
