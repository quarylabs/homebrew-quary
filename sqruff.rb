# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "23d4300ae00e28de6878ac5269c26ed40bd3306160a954498967311d7f752771"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "3c7837cab86e7c5b1150f73f1b8d4c3ce662c2710e96110b3f72373d64b56ab0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "6afd2cbfdcbe82c5d764169bca00fb7fa1281db442e579e42e7a314762dfeff4"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
