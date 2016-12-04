HOMEBREW_JID_VERSION = "0.6.1".freeze
HOMEBREW_JID_64_SHA = "3f0f3c468526ca675bb08f7129619ba0c95f3bd710f9d6d1f0aff833fee28336".freeze
HOMEBREW_JID_32_SHA = "5a04bce9f1ef45626b1641754536e24eef1c2a9f4446f05ec8d197c4712756e5".freeze

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
