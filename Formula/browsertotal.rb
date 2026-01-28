# typed: false
# frozen_string_literal: true

class Browsertotal < Formula
  desc "CLI tool to scan URLs, extensions, and packages for security threats"
  homepage "https://browsertotal.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SeraphicSecurity/BrowserTotal/releases/download/cli-v1.0.0/browsertotal-darwin-arm64.tar.gz"
      sha256 "54a8b2343b60a99cac67d52af9adb5572b707b74e119677d6ef28c7ea9f8b988"
    end
    on_intel do
      url "https://github.com/SeraphicSecurity/BrowserTotal/releases/download/cli-v1.0.0/browsertotal-darwin-x64.tar.gz"
      sha256 "f423e06457b9fccc798e946dbf8b5cf886c2ea3b3fcbdbf284650682a61d09c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SeraphicSecurity/BrowserTotal/releases/download/cli-v1.0.0/browsertotal-linux-arm64.tar.gz"
      sha256 "91a97419e5bf38c80b77b0fba52b8d6b5a4c50591bbf11964e7c1f0808415ee2"
    end
    on_intel do
      url "https://github.com/SeraphicSecurity/BrowserTotal/releases/download/cli-v1.0.0/browsertotal-linux-x64.tar.gz"
      sha256 "b061ea79b79eb1a5bbc7712a05f6c79172c45f162edf709a48a12c64909efdb3"
    end
  end

  def install
    bin.install "browsertotal"
  end

  test do
    assert_match "browsertotal v#{version}", shell_output("#{bin}/browsertotal --version")
  end
end
