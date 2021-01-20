require 'rails_helper'
describe Dog do
  describe '#create' do
    it "名前が空だと保存できない" do
      @dog = build(:dog, name: "")
      @dog.valid?
      expect(@dog.errors[:name]).to include("を入力してください")
    end

    it "名前が10文字以上だと保存できない" do
      @dog = build(:dog, name: "あああああああああああ")
      @dog.valid?
      expect(@dog.errors[:name]).to include("は10文字以内で入力してください")
    end

    it "紹介文がなければ保存できない" do
      @dog = build(:dog, introduction: "")
      @dog.valid?
      expect(@dog.errors[:introduction]).to include("を入力してください")
    end

    it "種類が空だと保存できない" do
      @dog = build(:dog, dog_breed_id: "")
      @dog.valid?
      expect(@dog.errors[:dog_breed_id]).to include("を入力してください")
    end

    it "年齢が空だと保存できない" do
      @dog = build(:dog, age_id:"")
      @dog.valid?
      expect(@dog.errors[:age_id]).to include("を入力してください")
    end

    it "性別が空だと保存できない" do
      @dog = build(:dog, sex_id: "")
      @dog.valid?
      expect(@dog.errors[:sex_id]).to include("を入力してください")
    end

    it ("健康状態が空だと保存できない") do
      @dog = build(:dog, condition_id: "")
      @dog.valid?
      expect(@dog.errors[:condition_id]).to include("を入力してください")
    end

  end
end