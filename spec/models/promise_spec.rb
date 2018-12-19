require 'rails_helper'

RSpec.describe Promise, type: :model do
  describe 'validations' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:promiser) }
    end

  it 'should have default status of in progress' do
    promise = create(:promise)

    expect(promise.status).to eq("in progress")
  end
end
