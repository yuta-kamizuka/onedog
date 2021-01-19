require 'rails_helper'
describe User do
  describe '#create' do
    it "ニックネームが空だと保存できない" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "メールアドレスが空だと保存できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "パスワードが空だと保存できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "パスワードの不一致" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "名字が空だと保存できない" do
      user = build(:user, family_name: "")
      user.valid?
      expect(user.errors[:family_name]).to include("を入力してください")
    end

    it "名字が全角でないと保存できない" do
      user = build(:user, family_name: "tarou")
      user.valid?
      expect(user.errors[:family_name]).to include("は全角入力をお願いします")
    end

    it "名前が空だと保存できない" do
        user = build(:user, first_name: "")
        user.valid?
        expect(user.errors[:first_name]).to include("を入力してください")
    end

    it "名前が全角でないと保存できない" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("は全角入力をお願いします")
    end

    it "名字がカナでないと保存できない" do
      user = build(:user, family_name_kana: "")
      user.valid?
      expect(user.errors[:family_name_kana]).to include
    end
    it "名字がカナでないと保存できない" do
      user = build(:user, family_name_kana: "")
      user.valid?
      expect(user.errors[:family_name_kana]).to include
    end

    it "名前がカナでないと保存できない" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include
    end
    it "名前が全角でないと保存できない" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include
    end


    it "電話番号が空だと保存できない" do
      user = build(:user, phone: "")
      user.valid?
      expect(user.errors[:phone]).to include("を入力してください")
    end
  end
end