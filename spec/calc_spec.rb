require 'rspec'
require 'calc'

describe 'calc' do

  it 'should eval 2 to 2' do
    Calc.eval('2') == 2
  end
end
