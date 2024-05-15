# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.4.9"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.9/sqruff-darwin-aarch64.tar.gz"
    sha256 "8b9d8ea731eabf295f2a2f9950653b3d23dab6f4c3abd5c65fb68f849eab9fbc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.9/sqruff-darwin-x86_64.tar.gz"
    sha256 "fc4582abd83f08d2f514c86d7373efa62da405100fe969311cf8bc457221d4cd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.9/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2ac3442d69018cb0bb501629710af7a7ffa1489d255bf2b18ff01aafb3ffa1a0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
