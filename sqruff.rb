# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.12"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.12/sqruff-darwin-aarch64.tar.gz"
    sha256 "55dc11d368fe6a060f5c6f8e5b0e1345540d693f51a600adb3bac1b49aadb54a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.12/sqruff-darwin-x86_64.tar.gz"
    sha256 "3df45effa39b034c3f287ee1db21a7a686d957dd806f54a4cbcf10ad93efe99d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.12/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "0c8e80d9b0f8c82ff9bf81e58926fdaf2663e2bff08d30940330ec91084272d2"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
