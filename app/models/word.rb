class Word < ApplicationRecord
  validates :title, presence: true
  validates :explanation, presence: true
  belongs_to :user
  has_many :comments
  is_impressionable 
  
  def self.search(search)
    # テーブルとのやり取りが必要なメソッドはモデルに記述
    if search
      Word.where('title LIKE(?)', "%#{search}%")
    # wordモデル内のtitleカラムでsearch(引数)の中身が含まれていたらwhereで取得。％#{search}%の為、引数の１文字でも含まれていたら取得できる
    else
      Word.all
    # searchの中身がなければ、全ての投稿を表示
    end
  end
end
