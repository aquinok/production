require 'spec_helper'

describe 'motd' do
  let(:title) { 'motd' }

  it { is_expected.to compile }
  it { is_expected.to contain_file('/etc/motd')
    .with(
      :ensure   => 'file',
      :owner    => 'root',
      :group    => 'root',
      :mode     => '0644',
    )
  }

end
