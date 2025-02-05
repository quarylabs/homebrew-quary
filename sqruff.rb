# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "e26cc3d03a1388f868890cb4dea5ce87249329952ebb88a2aeaf8c58c24fd5e9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "66a9e0c5ea631a993fa382416897f8a6498fe08bf446b50323e6f64ee6d61fbb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d5f66810477f6d2ae1e56bfe4eb38787307e98be76ff30112cb3429a2a0c52ba"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
