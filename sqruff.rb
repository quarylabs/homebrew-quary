# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.13.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.13.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "ddc8deeda62c7abc64586d71776730ac11bba96c1951519f699bfed40734f7f4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.13.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "6badf6d0f1bb91362a9ff3689671ba1b8a881c8f79435ccb65efe359b50d9511"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.13.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d8c0e1277a7c56130e9cb2a4e905969eed9597c4cafbf8890ae8b44fb2dcbccb"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
