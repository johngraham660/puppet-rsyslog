require 'spec_helper'

describe 'rsyslog::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_class('rsyslog::service') }
    end
  end
end
