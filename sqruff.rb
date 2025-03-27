# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.20"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.20/sqruff-darwin-aarch64.tar.gz"
    sha256 "b25d5360f4a4a77f3b6cc20d239cbec6d8733522c4533e8c989da6fafea411e4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.20/sqruff-darwin-x86_64.tar.gz"
    sha256 "a07d68395acacc072e8cc097b8923fe2e284e76f067c5e1c4e67c150fb46de5a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.20/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "ed85b30ad5afc3eeb446a129181c8454539b3a04b93eadc2d895958ff573da5c"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
