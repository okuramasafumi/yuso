require "spec_helper"

klasses = [Yuso::Yamato::Mapping, Yuso::Sagawa::Mapping, Yuso::Yubin::Mapping]
klasses.each do |klass|
  RSpec.describe klass do
    describe '.load' do
      subject { described_class.load }
      it { is_expected.to have_key('hokkaido') }
      it { is_expected.to have_key('tokyo') }
      it { is_expected.to have_exactly(47).items }
    end
  end
end
