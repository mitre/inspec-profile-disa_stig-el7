# -*- encoding : utf-8 -*-
require 'spec_helper'

describe 'dos2unix' do
  context 'Checking parameter validity' do
    it { is_expected.not_to eq(nil) }
    it do
      is_expected.to run.with_params.and_raise_error(ArgumentError, /Wrong number of arguments/)
    end
    it do
      is_expected.to run.with_params('one', 'two').and_raise_error(ArgumentError, /Wrong number of arguments/)
    end
    it do
      is_expected.to run.with_params([]).and_raise_error(Puppet::ParseError)
    end
    it do
      is_expected.to run.with_params({}).and_raise_error(Puppet::ParseError)
    end
    it do
      is_expected.to run.with_params(1).and_raise_error(Puppet::ParseError)
    end
  end

  context 'Converting from dos to unix format' do
    sample_text    = "Hello\r\nWorld\r\n"
    desired_output = "Hello\nWorld\n"

    it 'should output unix format' do
      should run.with_params(sample_text).and_return(desired_output)
    end
  end

  context 'Converting from unix to unix format' do
    sample_text    = "Hello\nWorld\n"
    desired_output = "Hello\nWorld\n"

    it 'should output unix format' do
      should run.with_params(sample_text).and_return(desired_output)
    end
  end
end
