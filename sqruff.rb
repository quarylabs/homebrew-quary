# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.5.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "6d2bbd4afedcfd0f372318c817b35896007e608cb879a2779afe6e442c76b82e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "288f21c0124809db4a5150b029c98a73a5a973d4f0d11b27d3e88549c167972c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "330b1313b51eed5c5032ae60efd024eb8fc58bf19d25217280f79f5ad12f4844"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
