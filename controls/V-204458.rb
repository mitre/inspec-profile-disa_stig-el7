control "V-204458" do
  title 'The Red Hat Enterprise Linux operating system must be a vendor supported release.'
  desc 'An operating system release is considered "supported" if the vendor continues to provide security patches for
    the product. With an unsupported release, it will not be possible to resolve security issues discovered in the system
    software.
    Red Hat offers the Extended Update Support (EUS) Add-On to a Red Hat Enterprise Linux subscription, for a fee, for those
    customers who wish to standardize on a specific minor release for an extended period. RHEL 7.7 marks the final minor
    release that EUS will be available.'
  desc  "rationale", ""
  desc  "check", "
    Verify the version of the operating system is vendor supported.

    Check the version of the operating system with the following command:

    # cat /etc/redhat-release

    Red Hat Enterprise Linux Server release 7.4 (Maipo)

    Current End of Life for RHEL 7.1 is 31 March 2017.

    Current End of Life for RHEL 7.2 is 30 November 2017.

    Current End of Life for RHEL 7.3 is 30 November 2018.

    Current End of Life for RHEL 7.4 is 31 August 2019.

    Current End of Life for RHEL 7.5 is 30 April 2020.

    Current End of Life for RHEL 7.6 is 31 October 2020.

    Current End of Life for RHEL 7.7 is 30 August 2021.

    If the release is not supported by the vendor, this is a finding.
  "
  desc "fix", "Upgrade to a supported version of the operating system."
  impact 0.7
  tag 'severity': 'high'
  tag 'gtitle': 'SRG-OS-000480-GPOS-00227'
  tag 'gid': 'V-204458'
  tag 'rid': 'SV-204458r505924_rule'
  tag 'stig_id': 'RHEL-07-020250'
  tag 'fix_id': 'F-4582r462547_fix'
  tag 'cci': ["CCI-000366"]
  tag nist: ["CM-6 b"]

  describe file('/etc/redhat-release') do
    its('content') { should match %r{Release (6.7*|7.[2-9].*)}i }
  end
end