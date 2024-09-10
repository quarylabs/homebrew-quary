# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.15.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "0249d096466a65042b7b4e5e1c4707f62d454099820f9b5532d13684521bf1f4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "d96c2de53dbe35f4762d336c1b1fe047be978f80504e58a04f1a49fee0fb47b1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "3fea88d806c087d44ad50c3986bcf542bc29ee18ad5fde89fe8fb88873cec5b2"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
