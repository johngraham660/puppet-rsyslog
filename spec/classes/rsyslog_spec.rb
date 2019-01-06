require 'spec_helper'

describe 'rsyslog' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_class('rsyslog') }
    end
  end
end
