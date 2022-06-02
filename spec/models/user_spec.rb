require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create!(firstname: 'Dan', surname: 'Dee', email: 'madea@mail.com', password: 'password')
  end

  before { subject.save }

  it 'should have name mphatso' do
    expect(subject.firstname).to eql('Dan')
  end

  it 'should have name mphatso' do
    expect(subject.surname).to eql('Dee')
  end

  it 'should have firstname present' do
    subject.firstname = nil
    expect(subject).to_not be_valid
  end

  it 'should have surname present' do
    subject.surname = nil
    expect(subject).to_not be_valid
  end

  it 'should have email mphatso@mail.com' do
    expect(subject.email).to eql('madea@mail.com')
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
