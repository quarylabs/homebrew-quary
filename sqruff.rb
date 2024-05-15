# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.4.7"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2667acd4d97e76cd1f42324c92f8cd0e2e37e2ba1879e890d01f4974ae6a5267"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2667acd4d97e76cd1f42324c92f8cd0e2e37e2ba1879e890d01f4974ae6a5267"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2667acd4d97e76cd1f42324c92f8cd0e2e37e2ba1879e890d01f4974ae6a5267"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
