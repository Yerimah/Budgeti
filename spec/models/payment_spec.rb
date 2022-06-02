require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:each) do
    @user = User.create(firstname: 'Dan', surname: 'Dee', email: 'madea@gmail.com', password: '123455')
    expect(@user).to be_valid
    @category = Category.create(name: 'hello', icon: 'icon',
                                user_id: @user.id)
    @payment = Payment.create(name: 'fuel', amount: 4,
                              user_id: @user.id, category_id: @category.id)
  end

  it 'spec for create a expense' do
    expect(@payment).to be_valid
    expect(@payment.name).to eq 'fuel'
    expect(@payment.amount.to_i).to eq 4
  end
end
