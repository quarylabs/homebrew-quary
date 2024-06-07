# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "5dc5acfc524b86cbf69e450f4a0fa619bc6f6ea7b4fc7f272bf1a95ac7e4930c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "ae855ef5ee4ac46cd64670f7cced0ad649d711db26a7123b3b914aaa8d620394"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "fe7f213a34106762bbc4b1f05adf30df2e211e300cc8b4a42fd845505684e655"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
