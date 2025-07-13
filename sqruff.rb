# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.28.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "a3b4234c73794efdf0fa3bb4327e8d635b5d668c72509ee4842e0f8859a6000b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "b79e33c0468a95a45e0d9f409c9d97428f1af2f16d506a584a4a3158cfa58c90"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "edf6442bdd9f00195f96858a35fa7ba589fe15ccf60f52e89b3c17f0488429a1"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
