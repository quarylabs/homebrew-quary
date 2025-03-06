# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.13"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.13/sqruff-darwin-aarch64.tar.gz"
    sha256 "9bdcbf74051004e991277c13b066c4cb6bf9ce3fc4dabd044cd6213536655db1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.13/sqruff-darwin-x86_64.tar.gz"
    sha256 "f0dc2d8a631a593bd1a5090f4fb0f1313e0f84eb6adf9d0ff3efcea16f97b6bd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.13/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "019247ae85661518d0113f9d6966a09c2b2eca0efbe689d19492b2433f946fff"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
