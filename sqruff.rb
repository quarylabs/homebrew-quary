# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.15.7"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.7/sqruff-darwin-aarch64.tar.gz"
    sha256 "04980430dd8e1a48844cb04174f402108d4abbdc2ee23171a25292aeda7a23cc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.7/sqruff-darwin-x86_64.tar.gz"
    sha256 "1969b5d833751e12762fd0e5b36c17dda64abb597c56805c23aaadde6da83522"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.7/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d109e640f881c3e9faabdbf4978981d41c1953d146faf843b3f977c905198153"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
