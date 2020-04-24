require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  example '正常なファクトリを持つこと' do
    expect(user.valid?).to eq true
    expect { user.save }.to change(User, :count).by(1)
  end
end
