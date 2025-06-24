# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.27.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.27.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "335f900bc73a4f0943e3ebf600087074de211c87e44415d8433116a80065f1c9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.27.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "e4fe686c652d49cc63b2b3ce01c8b9a153eaff405981b17311e16faf8aefbbe0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.27.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "1ef06b499b623ce0e3f486734d1e6e69ce3a35e0931ee05aeed76ef05e85837d"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
