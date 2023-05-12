#コントローラ
#ルーターの情報を受け取り、アクションを実行してアクティブレコードメソッドにより、DBに保存や取得をする。
#インスタンス変数にこの情報は格納される
#ビューでインスタンス変数の情報をしようする。

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    #acteiverecodeクラスをインスタンス化したもの
  end

  def create
    @contact = Contact.new(contact_params)
    #パラメータを受け取り、インスタンス変数へ代入
    

    
    
    #インスタンスをsaveメソッドでDBに保存
    #インスタンスなので、インスタンスメソッドを使用できる。
    if @contact.save
      redirect_to new_contact_path, notice:"データを送信しました！"
    else
      render :new
      #ここの動きがわからない。
    end
    

    

    
  end
  def contact_params
    #ストロングパラメータの定義
    params.require(:contact).
    permit(:name,:email,:content)
  end

end
