# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.3"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.3/sqruff-darwin-aarch64.tar.gz"
    sha256 "cf6809e9799c1baef5e4c73b80589e638acc5ff1cc56056d82757319c03694fe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.3/sqruff-darwin-x86_64.tar.gz"
    sha256 "a1dc919250d0891eceae87df35b4074464a3f442667a6361fb98145aa5e56455"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.3/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "4236de478ad756fd0dd3fb27ea93f7730e4166b013a46911d7a9fed97f5eaf47"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
