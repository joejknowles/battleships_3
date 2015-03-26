require 'ship'

describe Ship do
  it 'increments hits when hit' do
    expect { subject.hit }.to change { subject.hits }.from(0).to 1
  end
end
