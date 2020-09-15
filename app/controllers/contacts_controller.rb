class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end
  def new
    @contact = Contact.new
  end
  def create
    # Contact.create(contact_params)
    # redirect_to new_contact_path
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path, notice: "お問い合わせ内容を作成しました"
    else
      render :new
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
