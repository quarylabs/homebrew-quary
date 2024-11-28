# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.5"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "7f63eb41d8daf9db27f0e4c24697b75470da5e365e3cca8e5e7f1f502e43bd03"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "90c4744c7ef43fe8c4680af14e0c6cbac140c898d0a92d8b986627b3d89f2287"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.5/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2ee22c202c92b46a4765501502c34b885c7dd6f785fbebb618da80dc200c9639"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
