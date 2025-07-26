# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.29.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "e48653c354f48740f8c3371d0ce2f7d04329306477911ffed50ae234241413d2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "433bd05e2fac991c0900ceeb51c691e1ab52bc7f5cbc1f08a03c78ab7ff12c12"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "398041d5e10a1c3ac22ba8dea37e77881df58496334228928343fad2b2f76d51"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
