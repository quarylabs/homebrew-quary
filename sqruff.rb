# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.11.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "bbaca043b6ffe14758d210bc27164b793f96a991ec671c123c6b185bb74634b4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "87026e335bc69773558dbf664c253bde70a72c51c3d6075d2e5fd2ece61f6493"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "7267b8068716273cafe97d951f5c3de6f555c83ff562865bf8c161e5f74c40c0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
