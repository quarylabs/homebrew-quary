# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.15.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "58227331217f7f3bad03f94c3aa10606a130f0c27438a98fb4ff59887d96c0f2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "f22473bb7506efb3fd8e9f1fc1cc7daf40a1298af5c44acd5c555b951e8b623f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "8e9603ff52eea66ba05b24086ab3e34a78767d1910d58d43d8c0d659ddf43fff"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
