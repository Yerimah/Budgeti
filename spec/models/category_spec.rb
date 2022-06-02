require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create(firstname: 'Dan', surname: 'Van', email: 'madea@gmail.com', password: '123455')
    expect(@user).to be_valid
    @category = Category.create(name: 'car', icon: 'icon',
                                user_id: @user.id)
  end

  it 'spec for create a category' do
    expect(@category).to be_valid
    expect(@category.name).to eq 'car'
    expect(@category.icon).to eq 'icon'
  end
end
