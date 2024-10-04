# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.5"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "c43f74d526d5b415a1341d75d9e9388e95ebecf096670c9f6fa738b300145784"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "8f5c43d92a2f04669419488e4c29aacfdab5aa9d0a6a5fab76983551a074d56c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.5/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "63f0b768f01f0b5e9f610afc6287036973dab989f7dc6225445b68b58c4c8cc1"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
