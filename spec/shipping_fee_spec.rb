require "spec_helper"

klasses = [Yuso::Yamato::ShippingFee, Yuso::Sagawa::ShippingFee, Yuso::Yubin::ShippingFee]
klasses.each do |klass|
  RSpec.describe klass do
    describe '.load' do
      subject { described_class.load(name) }
      context 'when argument is proper prefecture name' do
        let(:name) { 'tokyo' }
        it { is_expected.to have_key('hokkaido') }
      end

      context 'when argument is not proper prefecture name' do
        let(:name) { 'hoge' }
        it 'raises ArgumentError' do
          expect{subject}.to raise_error(ArgumentError)
        end
      end
    end
  end
end
