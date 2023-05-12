class Contact < ApplicationRecord

  #バリデーション
  #コントローラでsaveメソッドが実行されたときに実行する
  #下記条件を満たした場合は保存を中止する
  validates :name, presence:true
  validates :email, presence:true
  validates :content, presence:true

  
  #new,email,contentが空の場合保存を中止する

  validates :content,presence: true,length: {maximum: 140}
  #140じを超えた場合保存を中止する
end


