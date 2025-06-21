# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.26.7"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.7/sqruff-darwin-aarch64.tar.gz"
    sha256 "7c69639f79ec27753b65f46438dac1ce9aa98eafe861970b93379d5531aa0b49"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.7/sqruff-darwin-x86_64.tar.gz"
    sha256 "e92b969615fa35cf569024e65d65e05a0a63f954877c6b9a20eac46b55443b1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "9a0327bfeb59350668a0eb8cb78687bcc8b962ec3bca34ec7e734e83bbc205c7"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
