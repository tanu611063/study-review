require 'rails_helper'

describe Word do
  describe '#create' do
    it "情報が全て存在すれば登録できること" do
      user = create(:user)
      word = build(:word, user_id: user[:id])
      expect(word).to be_valid
    end

    # presence_check
    it " titleがない場合は登録できないこと" do
      word = build(:word, title: nil)
      word.valid?
      expect(word.errors[:title]).to include("can't be blank")
    end

    # presence_check
    it " explanationがない場合は登録できないこと" do
      word = build(:word, explanation: nil)
      word.valid?
      expect(word.errors[:explanation]).to include("can't be blank")
    end
  end
end