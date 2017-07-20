require 'spec_helper'

describe 'motd::rule' do
    let(:title) { 'default' }

    it { is_expected.to contain_class('motd::init') }

    it do
        is_expected.to contain_file('/etc/motd').with({
            'ensure' => 'file',
            'owner'  => 'root',
            'grouo'  => 'root',
            'mode'   => '0644'
        })
    end
end
