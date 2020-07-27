require 'rails_helper'

describe WordsController, type: :controller do
  describe 'GET #new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end

    describe 'GET #edit' do
      it "@wordに正しい値が入っていること" do
        word = create(:word)
        get :edit, params: { id: word}
        expect(assigns(:word)).to eq word
      end
  
      it "edit.html.erbに遷移すること" do
        word = create(:word)
        get :edit, params: { id: word}
        expect(response).to render_template :edit
      end
      
      describe 'GET #index' do
        it "@wordに正しい値が入っていること" do
          words = create_list(:word, 3)
          get :index
          expect(assigns(:words)).to match(words.sort{ |a, b| b.created_at <=> a.created_at })
        end
    
        it "index.html.erbに遷移すること" do
          get :index
          expect(response).to render_template :index
        end
      end
    end
  end
end