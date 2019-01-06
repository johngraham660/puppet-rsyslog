require 'spec_helper'

describe 'rsyslog::params' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it { is_expected.to contain_class('rsyslog::params') }
    end
  end
end
