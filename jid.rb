HOMEBREW_JID_VERSION = "0.6.0".freeze
HOMEBREW_JID_64_SHA = "f818ae1b25097907a4b2add65f8bd174af1eceb3aaa66f8f772bd5c7cd785b72".freeze
HOMEBREW_JID_32_SHA = "e8a12026e2881076a5a1f461c3d9d98a0d30d0fca748423f56978d2cf482cec6".freeze

class Jid < Formula
  desc "jid"
  homepage "https://github.com/simeji/jid"

  if Hardware::CPU.is_64_bit?
    HOMEBREW_JID_NAME = "jid_darwin_amd64".freeze
    sha256 HOMEBREW_JID_64_SHA
  else
    HOMEBREW_JID_NAME = "jid_darwin_386".freeze
    sha256 HOMEBREW_JID_32_SHA
  end

  url "#{homepage}/releases/download/#{HOMEBREW_JID_VERSION}/#{HOMEBREW_JID_NAME}.zip"
  version HOMEBREW_JID_VERSION

  def install
    mv "#{buildpath}/#{HOMEBREW_JID_NAME}", "#{buildpath}/jid"
    bin.install "jid"
  end

  test do
    system "false"
  end
end
