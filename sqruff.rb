# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.7"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.7/sqruff-darwin-aarch64.tar.gz"
    sha256 "70abb52ac11ec2bbfa60dea31ada030757ea1d4308a5f21b93f2437bd298cbc1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.7/sqruff-darwin-x86_64.tar.gz"
    sha256 "938cd8dee70cb8d9e2064b6f498c29df6b58371f71fa1298ebbc10583faae1a6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "faff5b3089db07ebc7a45d865a2e4230f0551a0e9f275163dfe1e9eb21bae6c4"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
