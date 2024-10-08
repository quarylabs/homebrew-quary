# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "4122f88dfed15ef29bee52cb2d8614c2ca9e08f0b45fbf8c70850bc183a34b6f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "0d83ca864ce90f1df5acbb7759230cfcb0be99e2b84d6b68dfb89259c30c7e1e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "3f7f501ed3e60a24ae4bcea30cfd8e43b76b7fafa26b527987294c0de0691ad1"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
